class Flight < ActiveRecord::Base

  validates :number, numericality: true
  validates :number, presence: true
  validates :destination, presence: true  
  validates :airplane_id, presence: true
  validates :date, presence: true
  validates :origin, presence: true

  belongs_to :airplane
  has_many :seats, dependent: :destroy

  def create_seats
    rows = self.airplane.rows
    columns = self.airplane.columns

    rows.times do |x|
      row = x + 1
      columns.times do |y|
        col = y + 1
        seat = self.seats.create( {row: row, column: col} )
      end
    end

  end




end
