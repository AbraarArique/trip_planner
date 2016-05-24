class Trip < ActiveRecord::Base
  belongs_to :users
  has_many :events, dependent: :destroy
  validates :name, presence: true
end
