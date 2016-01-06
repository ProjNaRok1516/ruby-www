class Client < ActiveRecord::Base
  belongs_to :address
  validates_associated :address
end
