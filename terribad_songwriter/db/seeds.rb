# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Clear all
Intro.delete_all
Verse.delete_all
Bridge.delete_all
Solo.delete_all
Chorus.delete_all


# The song beings with ...
INTRO_DESCRIPTIONS =  [
                        "a tasty guitar lick",
                        "some soulful piano",
                        "the laughter of babies",
                        "a medieval fanfare"
                      ]

# The verse begins:
VERSE_LINES = [
                "I was so lonely",
                "I was up in the club",
                "I've never seen anyone like her",
                "And then everything changed",
                "My hands were shaking",
                "I got uncontrollably drunk",
                "Listen to my story",
                "Baby",
                "Let's go to the beach",
                "I'm running out of time"
              ]

# For the bridge, ...
BRIDGE_DESCRIPTIONS = [
                        "the beat drops",
                        "everything gets quiet"
                      ]

# ...and the singer sings...
BRIDGE_LINES =  [
                  "Oooh yeah yeah",
                  "Are you ready?",
                  "Let's go",
                  "Walk calmly to the nearest exit"
                ]

# Then there's a mind-blowing ... solo for X bars.
SOLO_INSTRUMENTS =  [
                      "guitar",
                      "keytar",
                      "saxophone",
                      "drum",
                      "violin"
                    ]


# The chorus comes in: ...
CHORUS_LINES =  [
                  "Don't change me",
                  "Baby, please!",
                  "Let's throw a party",
                  "Hold my hand",
                  "Make your move",
                  "I love you",
                  "I hate you",
                  "I could really use a sandwich"
                ]


# Make a bunch of choruses
10.times do
  new_chorus = Chorus.new
  number_of_lines = rand(3..4)

  new_chorus.line_one = CHORUS_LINES.sample
  new_chorus.line_two = CHORUS_LINES.sample
  new_chorus.line_three = CHORUS_LINES.sample
  new_chorus.line_four = CHORUS_LINES.sample if number_of_lines == 4

  new_chorus.save
end


# Make a few of intros
INTRO_DESCRIPTIONS.each do |desc|
  Intro.create(:description => desc)
end


# Make a bunch of verses
10.times do
  v = Verse.new
  number_of_lines = rand(2..4)

  v.line_one = VERSE_LINES.sample
  v.line_two = VERSE_LINES.sample

  v.line_three = VERSE_LINES.sample if number_of_lines >= 3
  v.line_four = VERSE_LINES.sample if number_of_lines == 4

  v.save
end


# Make a few bridges
4.times do
  b = Bridge.new
  number_of_lines = rand(0..3)

  b.description = BRIDGE_DESCRIPTIONS.sample

  b.line_one = BRIDGE_LINES.sample if number_of_lines >= 1
  b.line_two = BRIDGE_LINES.sample if number_of_lines >= 2
  b.line_three = BRIDGE_LINES.sample if number_of_lines >= 3

  b.save
end


# Make a few solos
SOLO_INSTRUMENTS.each do |instr|
  Solo.create(:instrument => instr, :length => rand(2..8))
end


# Associate a Chorus for 70% of Lead In objects
Intro.all.each do |lead|
  lead.chorus = Chorus.all.sample if rand < 0.7
  lead.save
end

Verse.all.each do |lead|
  lead.chorus = Chorus.all.sample if rand < 0.7
  lead.save
end

Bridge.all.each do |lead|
  lead.chorus = Chorus.all.sample if rand < 0.7
  lead.save
end

Solo.all.each do |lead|
  lead.chorus = Chorus.all.sample if rand < 0.7
  lead.save
end