class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :rsvps, foreign_key: :attendee_id
  has_many :events_to_attend, through: :rsvps
  has_many :created_events, :class_name => "Event", foreign_key: "creator_id"

  has_secure_password
end
