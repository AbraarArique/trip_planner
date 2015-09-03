require 'rails_helper'

RSpec.describe Place, type: :model do
  it 'validates that name, location, lat, long and trip_plan_id is present' do
    p1 = build(:place, name: nil)
    p2 = build(:place, location: nil)
    p3 = build(:place, lat: nil)
    p4 = build(:place, long: nil)
    p5 = build(:place, trip_plan_id: nil)

    p6 = build(:place, name: 'NN')
    p7 = build(:place, location: 'LOC')
    p8 = build(:place, lat: -71)
    p9 = build(:place, long: 5)
    p10 = build(:place, trip_plan_id: 3)

    expect(p1.save).to be false
    expect(p2.save).to be false
    expect(p3.save).to be false
    expect(p4.save).to be false
    expect(p5.save).to be false
    expect(p6.save).to be true
    expect(p7.save).to be true
    expect(p8.save).to be true
    expect(p9.save).to be true
    expect(p10.save).to be true
  end

  it 'validates that name is between 2 and 255' do
    p1 = build(:place, name: 'N')
    p2 = build(:place, name: 'N'*256)
    p3 = build(:place, name: 'NN')
    p4 = build(:place, name: 'N'*255)

    expect(p1.save).to be false
    expect(p2.save).to be false
    expect(p3.save).to be true
    expect(p4.save).to be true
  end

  it 'validates numericality of lat and long' do
    p1 = build(:place, lat: 'GG')
    p2 = build(:place, long: 'FF')

    p3 = build(:place, lat: 345)
    p4 = build(:place, long: -34)

    expect(p1.save).to be false
    expect(p2.save).to be false
    expect(p3.save).to be true
    expect(p4.save).to be true
  end
end