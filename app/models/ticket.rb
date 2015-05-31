class Ticket < ActiveRecord::Base
  validates :description, :presence => true
end
