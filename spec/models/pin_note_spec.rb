require 'rails_helper'

RSpec.describe PinNote, type: :model do
  it 'should not save pin note without note' do
    p1 = build(:pin_note, note: nil)
    p2 = build(:pin_note, note: 'N'*5)

    expect(p1.save).to be false
    expect(p2.save).to be true
  end

  it 'validates length of pin note' do
    p1 = build(:pin_note, note: 'N'*4)
    p2 = build(:pin_note, note: 'N'*256)

    p3 = build(:pin_note, note: 'N'*5)
    p4 = build(:pin_note, note: 'N'*255)

    expect(p1.save).to be false
    expect(p2.save).to be false
    expect(p3.save).to be true
    expect(p4.save).to be true
  end
end
