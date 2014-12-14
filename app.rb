require 'sinatra'
require 'sinatra/activerecord'
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
before do
  @errors ||= []
end
get '/' do
  erb :index
end

post '/signup' do
  @user =User.create!(name: params[:name],email: params[:email], password: params[:password],password_confirmation: params[:password_confirmation])
  return "signed up"
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect("/user")  
    else
      @errors << "incorrect password or email"
      erb :index
    end
  else
    @errors << "invalid email"
    erb :index
  end
end

get '/user' do
  @user=current_user
  @events= @user.events 
  erb :user_home
end
get "/logout" do
  session.clear
  redirect('/')
end










