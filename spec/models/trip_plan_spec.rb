require 'rails_helper'

RSpec.describe TripPlan, type: :model do
  it 'validate that title, date, time, duration and day_id is present' do
    t1 = build(:trip_plan, title: nil)
    t2 = build(:trip_plan, date: nil)
    t3 = build(:trip_plan, time: nil)
    t4 = build(:trip_plan, duration: nil)
    t5 = build(:trip_plan, day_id: nil)

    t6 = build(:trip_plan, title: 'TT')
    t7 = build(:trip_plan, date: 34)
    t8 = build(:trip_plan, time: 'TM')
    t9 = build(:trip_plan, duration: 'DR')
    t10 = build(:trip_plan, day_id: 55)

    expect(t1.save).to be false
    expect(t2.save).to be false
    expect(t3.save).to be false
    expect(t4.save).to be false
    expect(t5.save).to be false
    expect(t6.save).to be true
    expect(t7.save).to be true
    expect(t8.save).to be true
    expect(t9.save).to be true
    expect(t10.save).to be true
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

  it 'validates length of title, time and duration' do
    t1 = build(:trip_plan, title: 'T')
    t2 = build(:trip_plan, title: 'T'*256)
    t3 = build(:trip_plan, time: 'T')
    t4 = build(:trip_plan, time: 'T'*256)
    t5 = build(:trip_plan, duration: 'D')
    t6 = build(:trip_plan, duration: 'D'*256)

    t7 = build(:trip_plan, title: 'TT')
    t8 = build(:trip_plan, title: 'T'*255)
    t9 = build(:trip_plan, time: 'TT')
    t10 = build(:trip_plan, time: 'T'*255)
    t11 = build(:trip_plan, duration: 'DD')
    t12 = build(:trip_plan, duration: 'D'*255)

    expect(t1.save).to be false
    expect(t2.save).to be false
    expect(t3.save).to be false
    expect(t4.save).to be false
    expect(t5.save).to be false
    expect(t6.save).to be false
    expect(t7.save).to be true
    expect(t8.save).to be true
    expect(t9.save).to be true
    expect(t10.save).to be true
    expect(t11.save).to be true
    expect(t12.save).to be true
  end
end