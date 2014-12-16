#Event class has many users though the join table events_users and one restaurant will be chosen for the event.
class Event < ActiveRecord::Base
 has_many :events_users
 has_many :users, through: :events_users
 belongs_to :restaurant

end
