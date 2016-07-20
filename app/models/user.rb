class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :rsvps
  has_many :events, through: :rsvps
  has_many :created_events, :class_name => "Event", foreign_key: "creator_id"
end
