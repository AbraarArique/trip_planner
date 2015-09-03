class PinNote < ActiveRecord::Base
  validates :note,
            presence: true,
            length: { in: 5..255 }
end
