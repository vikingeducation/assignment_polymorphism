puts "Cleaning out music collection"

Song.destroy_all
Mp3.destroy_all
Record.destroy_all
Cd.destroy_all

@media_array = []

puts "Mp3"
5.times do
  @media_array << Mp3.create!
end

puts "Burning blank discs"
5.times do
  @media_array << Cd.create!
end

puts "Recording"
5.times do
  @media_array << Record.create!
end

puts "Making music"
25.times do
  sampled = @media_array.sample
  Song.create!(name: "#{Faker::Hipster.word.capitalize}'s #{Faker::Music.instrument}", medium_id: sampled.id, medium_type: sampled.type)
end
