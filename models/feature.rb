class Feature < ActiveRecord::Base
 has_many :restaurants, through: :features_restaurants
end