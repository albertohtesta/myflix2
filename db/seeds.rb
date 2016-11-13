# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classic = Category.create!(name: 'Classic')
family = Category.create!(name: 'Family')

videos = Video.create!([
  {title: 'Futurama', small_cover_url: 'tmp/futurama.jpg', large_cover_url: 'tmp/monk_large.jpg', category: classic, description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another." },
  {title: 'Futurama', small_cover_url: 'tmp/futurama.jpg', large_cover_url: 'tmp/monk_large.jpg', category: classic, description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another." },
  {title: 'Futurama', small_cover_url: 'tmp/futurama.jpg', large_cover_url: 'tmp/monk_large.jpg', category: classic, description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another." },
  {title: 'Futurama', small_cover_url: 'tmp/futurama.jpg', large_cover_url: 'tmp/monk_large.jpg', category: classic, description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another." },
  {title: 'South Park', small_cover_url: 'tmp/south_park.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999." },
  {title: 'Family Guy', small_cover_url: 'tmp/family_guy.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way."  },
  {title: 'South Park', small_cover_url: 'tmp/south_park.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999." },
  {title: 'Family Guy', small_cover_url: 'tmp/family_guy.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way."  },
  {title: 'Family Guy', small_cover_url: 'tmp/family_guy.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way."  },
  {title: 'South Park', small_cover_url: 'tmp/south_park.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999." },
  {title: 'Family Guy', small_cover_url: 'tmp/family_guy.jpg', large_cover_url: 'tmp/monk_large.jpg.jpg', category: family, description:"Adrian Monk is a brilliant San Francisco detective, whose obsessive compulsive disorder just happens to get in the way."}
])
mario = User.create(full_name: "Mario Hdez", password: "password", email: "mario@example.com")
monk = Video.create(title: 'Futurama', small_cover_url: 'tmp/futurama.jpg', large_cover_url: 'tmp/monk_large.jpg', category: classic, description: "In a wacky Rhode Island town, a dysfunctional family strive to cope with everyday life as they are thrown from one crazy scenario to another.")
Review.create(user: mario, video: monk, rating: 5, content: "!This is a really good movie")
Review.create(user: mario, video: monk, rating: 2, content: "!This is not a good movie")