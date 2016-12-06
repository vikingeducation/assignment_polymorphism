# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movements = ["swim", "walk", "run", "fly"]

animals = []
animals << d = Deer.create(name: 'Bob')

animals << f = Fish.create(name: 'Nemo')

animals << b = Bird.create(name: 'birdperson')

movements = ["swim", "walk", "run", "fly"]

movements.each do |m|
  a = animals.sample
  Movement.create(name: m, moveable_id: a.id, moveable_type: a.class )
end
