class CabinStateRange < ActiveRecord::Base
  belongs_to :cabin
  belongs_to :cabin_state
end
