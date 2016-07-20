class Event < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rsvps
  belongs_to :creator, :class_name => "User"
end
