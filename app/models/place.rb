class Place < ActiveRecord::Base
  belongs_to :trip_plan
  validates :name, :location, :lat, :long, :trip_plan_id,
            presence: true
  validates :lat, :long, :trip_plan_id,
            numericality: true
  validates :name,
            length: { in: 2..255 }
end