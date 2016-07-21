class Rsvp < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :attendee, :class_name => "User"
  belongs_to :event_to_attend, :class_name => "Event"
end
