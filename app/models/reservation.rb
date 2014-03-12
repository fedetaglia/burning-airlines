class Reservation < ActiveRecord::Base
  belongs_to :flight
end
