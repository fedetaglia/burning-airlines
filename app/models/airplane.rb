class Airplane < ActiveRecord::Base
  has_many :flights, dependent: :destroy

  validates :name, presence: true
  validates :rows, presence: true
  validates :columns, presence: true
end
