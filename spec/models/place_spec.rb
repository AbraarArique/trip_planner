require 'rails_helper'

RSpec.describe Place, type: :model do
  it 'validates that name, location, lat and long is present' do
    p1 = build(:place, name: 'N', location: 'L', lat: 45, long: nil)
    p2 = build(:place, name: 'N', location: 'L', lat: 35, long: -71)
    expect(p1.save).to be false
    expect(p2.save).to be true
  end
end