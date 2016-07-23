class Reservation < ActiveRecord::Base
  belongs_to :client
  belongs_to :cabin
  belongs_to :reservation_state
end
