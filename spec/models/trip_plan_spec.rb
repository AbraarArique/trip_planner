require 'rails_helper'

RSpec.describe TripPlan, type: :model do
  it 'validate that title, date, time and duration is present' do
    t1 = build(:trip_plan, title: 'T', date: '3', time: nil, duration: '3 H')
    t2 = build(:trip_plan, title: 'T', date: '3', time: 'TM', duration: '3 H')
    expect(t1.save).to be false
    expect(t2.save).to be true
  end

  it 'validates that date is between 1 and 365' do
    t1 = build(:trip_plan, date: 0)
    t2 = build(:trip_plan, date: 366)
    t3 = build(:trip_plan, date: 1)
    t4 = build(:trip_plan, date: 365)
    expect(t1.save).to be false
    expect(t2.save).to be false
    expect(t3.save).to be true
    expect(t4.save).to be true
  end
end