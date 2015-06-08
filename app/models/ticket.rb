class Ticket < ActiveRecord::Base
  validates :underwriter, :presence => true
end
