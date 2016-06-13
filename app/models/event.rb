class Event < ActiveRecord::Base
  belongs_to :trip
  validates :title, presence: true, length: { in: 5..255 }
end
