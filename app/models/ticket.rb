class Ticket < ActiveRecord::Base
  validates :uw_name, :presence => true
end
