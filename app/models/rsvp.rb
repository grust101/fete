class Rsvp < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :attendees, :class_name => "User" 
  belongs_to :events
end
