# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cone_kinds = ["waffle", "terrible cake-style", "sugar", "chocolate-dipped"]
sizings = ["small", "medium", "large"]
flavors = ["green tea", "dark chocolate", "rum raisin", "bacon caramel", "tobacco-mint julep", 
           "orange blossom", "saffron-rosewater", "black sesame", "cardamom cinnamon", "phlegm"]


20.times do
  c = Cone.new
  c.sizing = sizings.sample
  c.kind = cone_kinds.sample
  c.save
end

10.times do
  c = Cup.new
  c.sizing = sizings.sample
  c.save
end


90.times do
  i = IceCreamScoop.new
  i.flavor = flavors.sample
  i.save
end


cups = Cup.all
cones = Cone.all

IceCreamScoop.all.each do |scoop|
  which_container = [:cups, :cones].sample

  case which_container
  when :cups
    scoop.container = cups.sample
  when :cones
    scoop.container = cones.sample
  end
  scoop.save
end
