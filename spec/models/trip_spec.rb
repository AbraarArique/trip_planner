require 'rails_helper'

RSpec.describe Day, type: :model do
  it 'validates that day is present' do
    d1 = build(:day, day: nil)
    d2 = build(:day, day: 18)

    expect(d1.save).to be false
    expect(d2.save).to be true
  end

  it 'validates that day is between 1 and 365' do
    d1 = build(:day, day: 0)
    d2 = build(:day, day: 366)
    d3 = build(:day, day: 1)
    d4 = build(:day, day: 365)

    expect(d1.save).to be false
    expect(d2.save).to be false
    expect(d3.save).to be true
    expect(d4.save).to be true
  end
end
