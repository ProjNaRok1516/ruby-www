class Order < ActiveRecord::Base
  belongs_to :client
  validates_associated :client
end
