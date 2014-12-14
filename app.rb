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

get '/' do
  @users = User.all
  erb :index
end