class Flight < ActiveRecord::Base
  belongs_to :plane
  has_many :reservations


  validates :number, numericality: true
  validates :number, presence: true
end
