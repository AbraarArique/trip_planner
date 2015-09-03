class Day < ActiveRecord::Base
  has_many :trip_plans, dependent: :destroy
  validates :day,
            presence: true,
            inclusion: { in: (1..365).to_a }
end