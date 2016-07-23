class Cabin < ActiveRecord::Base
  has_many :price
  has_many :cabin_state_range
end
