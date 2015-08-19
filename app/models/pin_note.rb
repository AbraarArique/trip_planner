class PinNote < ActiveRecord::Base
  validates :note,
  presence: true
end
