class Event < ActiveRecord::Base
 has_many :users, through: :events_users
 belongs_to :restaurant
end
