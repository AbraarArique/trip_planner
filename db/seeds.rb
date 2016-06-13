@user = User.new(email: 'abraararique@gmail.com', password: 'password123')
@user.save

@trip1 = @user.trips.create(name: 'Cox\'s Bazar Trip',
start_date: '12/02/2016',
end_date: '12/15/2016')
@trip2 = @user.trips.create(name: 'Sylhet Trip',
start_date: '11/03/2015',
end_date: '11/10/2015')
@trip3 = @user.trips.create(name: 'Dhaka Trip',
start_date: '10/11/2014',
end_date: '10/16/2014')

@event1 = @trip1.events.create(title: 'Hotel',
date: '12/02/2016',
time: '09:30',
duration: '2 Hours',
place: 'Cox\'s Bazar',
notes: 'Finally arrived!')
@event2 = @trip1.events.create(title: 'Beach',
date: '12/02/2016',
time: '12:30',
duration: '1 Hour',
place: 'Cox\'s Bazar Beach',
notes: 'Wow! Cold!')
@event3 = @trip2.events.create(title: 'Jaflong',
date: '11/03/2015',
time: '07:30',
duration: '10 Hours',
place: 'Sylhet City',
notes: 'Beautiful.')
@event4 = @trip2.events.create(title: 'Madhupkunda',
date: '11/04/2015',
time: '12:30',
duration: '3 Hours',
place: 'Madhupkunda Waterfall',
notes: 'Nice.')
@event5 = @trip3.events.create(title: 'Jamuna',
date: '10/11/2014',
time: '23:30',
duration: '6 Hours',
place: 'Jamuna Resort',
notes: 'Awesome place.')
@event6 = @trip3.events.create(title: 'Bridge',
date: '10/12/2014',
time: '08:30',
duration: '1 Hour',
place: 'Jamuna Bridge',
notes: 'Great experience.')

@note1 = @user.notes.create(note: 'What an awesome day!')
@note2 = @user.notes.create(note: 'Booked an awesome villa.')
@note3 = @user.notes.create(note: 'Business is booming! :D')
