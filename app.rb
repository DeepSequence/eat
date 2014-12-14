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

helpers do
  def current_user
    @current_user || nil
  end

  def current_user?
    @current_user == nil ? false : true
  end
end

get '/' do
  erb :index
end

post '/signup' do
  puts "here?"
  @user =User.create!(name: params[:name],email: params[:email], password: params[:password],password_confirmation: params[:password_confirmation])
  return "signed up"
end