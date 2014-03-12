class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :flight

  validates :user_id, presence: true
  validates :flight_id, presence: true
  validates :row, presence: true
  validates :column, presence: true

end
