require 'rails_helper'

RSpec.describe PinNote, type: :model do
  it 'should not save pin note without note' do
    p1 = build(:pin_note, note: nil)
    expect(p1.save).to be false
  end
end
