class Flight < ActiveRecord::Base

  validates :number, numericality: true
  validates :number, presence: true

  belongs_to :airplane
  has_many :reservations

end
