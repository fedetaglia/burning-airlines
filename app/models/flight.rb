class Flight < ActiveRecord::Base

  validates :number, numericality: true
  validates :number, presence: true
  validates :destination, presence: true  
  validates :airplane_id, presence: true
  validates :date, presence: true
  validates :origin, presence: true

  belongs_to :airplane
  has_many :reservations

end
