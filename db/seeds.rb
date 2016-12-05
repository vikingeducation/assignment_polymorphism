

def cleanse(models)
  models.each { |model| model.destroy_all }
end

def generate_drivables(n, drivables)
  n.times do
    drivables.sample.create(name: Faker::StarWars.vehicle)
  end
end

def generate_engines(drivables)
  drivables.each do |drivable|
    drivable.engine = Engine.create(name: Faker::Space.nasa_space_craft)
  end
end

drivables = [Car, Motorcycle]

models = [Engine, Car, Motorcycle]

cleanse(models)

generate_drivables(44, drivables)

generate_engines(Car.all + Motorcycle.all)
