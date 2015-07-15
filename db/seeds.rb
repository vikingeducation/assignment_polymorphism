
# Destroy the old stuff
User.destroy_all
Email.destroy_all

# Create Users
20.times do
	u = User.new

	u.first_name = Faker::Name.first_name
	u.last_name = Faker::Name.last_name
	u.email = Faker::Internet.email

	u.save!
end