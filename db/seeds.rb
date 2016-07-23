require 'faker'

10.times do 

	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		password_digest: Faker::Internet.password(8, 20)
		)

end

10.times do 

	Event.create(
		name: Faker::Lorem.sentence,
		description: Faker::Lorem.paragraph,
		date: Time.at(rand * Time.now.to_i),
		category:  ["Birthday", "Dinner Party", "Graduation Party", "Theme Party", "Holiday Party", "Baby Shower", "Bridal Shower", "Tea Party", "Fundraising Event", "Costume Party", "Housewarming", "Block Party", "Bachelor Party", "Bachelorette Party", "Cast Party", "Cooking Party", "Dance Party", "Engagement Party", "Farwell Party", "Full Moon Party", "House Party", "Ice Cream Social","Silent Disco", "Surprise Party", "Sleepover", "Tailgate", "Welcome Party", "Other"].sample,
		creator_id: Faker::Number.number(1)

		)

end

30.times do 

Rsvp.create(
	attendee_id: Faker::Number.number(1),
	event_id: Faker::Number.number(1)
	)

end