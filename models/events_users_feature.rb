class EventsUsersFeature < ActiveRecord::Base
 belongs_to :feature
 belongs_to :events_user
end