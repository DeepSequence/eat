# user has many events through the join table called events_users
class User < ActiveRecord::Base
  has_secure_password
  has_many :events_users
  has_many :events, through: :events_users
end
