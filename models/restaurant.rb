class Restaurant < ActiveRecord::Base
  has_many :events
  has_many :features_restaurants
end