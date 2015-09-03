class TripPlan < ActiveRecord::Base
  belongs_to :day
  has_one :place, dependent: :destroy
  validates :title, :date, :time, :duration, :day_id,
            presence: true
  validates :date,
            inclusion: { in: (1..365).to_a }
  validates :title, :time, :duration,
            length: { in: 2..255 }
end