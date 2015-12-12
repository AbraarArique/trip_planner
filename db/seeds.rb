# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Day.create(
  day: 1
)
Day.create(
  day: 2
)

TripPlan.create(
  title: 'Arrive At Bali',
  date: 1,
  time: '6:00 AM',
  duration: '6 Hours',
  notes: 'Just arrived at Bali. Getting settled in a private villa near the beach. Awesome view.',
  day_id: 1
)
TripPlan.create(
  title: 'Going to Sanur',
  date: 1,
  time: '10:00 AM',
  duration: '3 Hour',
  notes: 'The Sanur beach is a must-see-place in Bali. So we\'re gonna see it first.',
  day_id: 1
)
TripPlan.create(
  title: 'Ubud',
  date: 2,
  time: '8:00 AM',
  duration: '3 Hour 30 Minutes',
  notes: 'The scenary at Ubud is amazing. The green fields will just catch your eyes!',
  day_id: 2
)

Place.create(
  name: 'The Island of Indonesia',
  location: 'Bali, Indonesia',
  description: 'Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs.',
  lat: 8.6500,
  long: 115.2167,
  trip_plan_id: 1
)
Place.create(
  name: 'The Beach of Bali',
  location: 'Denpasar, Bali, Indonesia',
  description: 'Sanur is a coastal stretch of beach of Denpasar city of southeast Bali.',
  lat: 8.6833,
  long: 115.2667,
  trip_plan_id: 2
)
Place.create(
  name: 'Town in Indonesia',
  location: 'Ubud, Bali, Indenosia',
  description: 'The town of Ubud, in the uplands of Bali, Indonesia, is known as a center for traditional crafts and dance.',
  lat: 8.5069,
  long: 115.2624,
  trip_plan_id: 3
)

PinNote.create(
  note: 'Oops! Forgot to call my mom.'
)
PinNote.create(
  note: 'The private villa rate: $250/night'
)
PinNote.create(
  note: 'Places to see: Sanur Beach, Ubud'
)
PinNote.create(
  note: 'The food here is delicious.'
)
PinNote.create(
  note: 'A loooong day, very tired :('
)
