class Day < ActiveRecord::Base
  has_many :trip_plans, dependent: :destroy
  has_many :places, through: :trip_plans
  validates :day,
  presence: true, inclusion: { in: (1..365).to_a }
end