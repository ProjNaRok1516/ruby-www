class Order < ActiveRecord::Base
  belongs_to :client
  validates :total_cost, numericality: true
  validates_associated :client
end
