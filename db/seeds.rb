
# Destroy the old stuff
Book.destroy_all
Song.destroy_all
Author.destroy_all

# create books (title, description)
20.times do
	b = Book.new

	b.title = Faker::Lorem.words(4).join(' ').titleize
	b.description = Faker::Lorem.sentence

	b.save!
end

# create songs (title)
20.times do
	s = Song.new

	s.title = Faker::Lorem.words(4).join(' ').titleize

	s.save!
end

# Create Authors
20.times do
	a = Author.new

	a.first_name = Faker::Name.first_name
	a.last_name = Faker::Name.last_name

	allBooks = Book.all.pluck(:id)
	allSongs = Song.all.pluck(:id)

	if rand(1..2) == 1
		# Books
		a.authored_id = allBooks.sample
		a.authored_type = "Book"
	else
		# Songs
		a.authored_id = allSongs.sample
		a.authored_type = "Song"
	end

	a.save!
end