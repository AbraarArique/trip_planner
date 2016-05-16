class PinNote < ActiveRecord::Base
  belongs_to :users
  validates :note,
            presence: true,
            length: { in: 5..255 }
end
