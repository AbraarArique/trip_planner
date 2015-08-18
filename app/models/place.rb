class Place < ActiveRecord::Base
  belongs_to :trip_plan
  validates :name, :location, :lat, :long, :trip_plan_id,
  presence: true
end