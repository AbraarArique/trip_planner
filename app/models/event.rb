class Event < ActiveRecord::Base
  belongs_to :trip
  validates :title, :date, :time, :duration, :day_id, presence: true
end
