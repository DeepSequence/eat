class EventsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :events_users_features
  #stores what preferences a user has for this event
  has_many :features, :through => :events_users_features
end