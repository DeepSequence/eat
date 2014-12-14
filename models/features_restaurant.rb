class FeaturesRestaurant < ActiveRecord::Base
 belongs_to :restaurant
 belongs_to :feature
end