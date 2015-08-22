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
  title: 'Morning Walk',
  date: 1,
  time: '7:00 AM',
  duration: '1 Hour',
  notes: 'Need to start the day fresh.',
  day_id: 1
)
TripPlan.create(
  title: 'Learning Time',
  date: 1,
  time: '5:00 PM',
  duration: '1 Hour',
  notes: 'Let\'s increase our knowledge.',
  day_id: 1
)
TripPlan.create(
  title: 'Rails Development',
  date: 2,
  time: '8:00 PM',
  duration: '1 Hour 30 Minutes',
  notes: 'Do some awesome Ruby coding.',
  day_id: 2
)

Place.create(
  name: 'Besides the Hills',
  location: 'Mountain Hills, Vietnam',
  description: 'Beautiful Hills of the Sea.',
  lat: 0,
  long: 0,
  trip_plan_id: 1
)
Place.create(
  name: 'Around the Mountains',
  location: 'Mountain View, Calafornia',
  description: 'High Mountain Giants.',
  lat: 56,
  long: 32,
  trip_plan_id: 2
)
Place.create(
  name: 'At Home',
  location: 'USA',
  description: 'Home at the top of Hill.',
  lat: 15,
  long: 24,
  trip_plan_id: 3
)

PinNote.create(
  note: 'Note 1'
)
PinNote.create(
  note: 'Note 2'
)
PinNote.create(
  note: 'Note 3'
)
PinNote.create(
  note: 'Note 4'
)
PinNote.create(
  note: 'Note 5'
)