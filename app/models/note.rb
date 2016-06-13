class Note < ActiveRecord::Base
  belongs_to :users
  validates :note, presence: true, length: { in: 2..255 }
end
