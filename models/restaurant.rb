class Restaurant < ActiveRecord::Base
  has_many :events
  has_many :features_restaurants
  has_many :features, :through => :features_restaurants
end