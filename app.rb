require 'pony'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require_relative './models/user'
require_relative './models/restaurant'
require_relative './models/features_restaurant'
require_relative './models/feature'
require_relative './models/event'
require_relative './models/events_user'
require_relative './models/events_users_feature'
require_relative './config/environments'

enable :sessions

helpers do
  def current_user
     User.find(session[:user_id])
  end

  def current_user?
    !session[:user_id].nil?
  end
end

get '/' do
  unless session[:user_id].nil?
    @user = current_user
    @events = @user.events.live.sort_by {|x| x.event_date}
  end
  erb :index
end
#create user, saves id in a session using the has_secure_password method
post '/signup' do
  @user = User.create!(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  session[:user_id] = @user.id
  redirect('/')
end
# looks at the email address the user typed in, 
# if it finds the user, then it tries to authenticate the user using the has_secure_password method.
# if they type the password correctly, then it's going to put their id in the session and redirct them to their user page.
post '/login' do
  @user = User.find_by(email: params[:email])
  if @user
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect('/')  
    else
      flash.now[:error]= "incorrect password or email"
      erb :index
    end
  else
    flash.now[:error]= "incorrect password or email"
    erb :index
  end
end

#display the form to create a new event
get '/new_event' do
  @user = current_user
  erb :new_event
end
#after clicking on the submit button on the form, user creates the event in the database, then redirect to the view of the event you just created
post '/create_event' do
  @user = current_user
  @event = @user.events.create(name_of_event: params[:name], event_date: params[:event_date])
  @event_user = EventsUser.find_by(user_id: @user.id, event_id: @event.id)
  @event_user.attending=true
  @event_user.save!
  redirect("/view_event/#{@event.id}")
end

#this is the view_event page for every user
get '/view_event/:id' do
  @event = Event.find(params[:id])
  #find the association between the current user and the event
  @event_user = EventsUser.find_by(event_id: @event.id, user_id: current_user.id)
  erb :view_event
end

#find the restaurant by the id and view it
get '/view_restaurant/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :view_restaurant
end

#find the user by email if they are in the database, then links them to the event. they have to be in the database already for this to work.
post '/invite' do
  @user = User.find_by(email: params[:email])
  unless @user == nil
    EventsUser.create!(user_id: @user.id, event_id: params[:event_id])   
  else
    flash[:error]= "Unknown user #{params[:email]}, sign up email sent."
    Pony.mail :to => params[:email],
            :from => "invites@where2eat.io",
            :subject => "Please create an account to start using Where2Eat!",
            :html_body => "<p>Hello,</p>
                           <p>Good news. Somebody wants to eat with you.</p>
                            <p>Please visit <a href='https://desolate-plateau-3067.herokuapp.com/'>Where2Eat</a> and Sign Up so they can invite you!</p>
                          <p>Thanks,</p>
                          <p>Your friends at Where2Eat</p>"
  end
  redirect("/view_event/#{params[:event_id]}")  
end



#make a post request for /view_preferences
get '/pick_preferences/:event_id' do
  @event_id = params[:event_id]
  @features = Feature.all.sort {|a,b| a.name <=> b.name}
  erb :pick_preferences
end

#saves the prefereces form
post '/save_preferences' do
  #find the link between the user and the event
  event_user=EventsUser.find_by(user_id: current_user.id, event_id: params[:event_id])
  #indicates the user has selected preferences for this event and saves it to the db(events_users table)
  event_user.selected_preferences=true
  event_user.attending=true
  event_user.save
  #grab all the features that were selected on the form into a features array
  @features=params[:feature]
  #loop over all of the feature that were selected 
  @features.each do |feature| 
    #create a association between event, user and feature
    EventsUsersFeature.create(events_user_id: event_user.id, feature_id: feature)
  end
  event=Event.find(params[:event_id])
  event.choose_restaurant
  redirect("/view_event/#{params[:event_id]}")
end  
#picks the restaurant and picks it into the event
post '/choose_restaurant' do
  @event = Event.find(params[:event_id])
  @event.choose_restaurant
  redirect("/view_event/#{@event.id}")
end

post '/cancel_event' do
  event= Event.find(params[:event_id])
  event.cancel
  redirect('/')
end

get '/logout' do
  session.clear
  redirect('/')
end

