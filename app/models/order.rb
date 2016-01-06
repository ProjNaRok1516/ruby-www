class Order < ActiveRecord::Base
  belongs_to :client
  validates :total_cost, numericality: { greater_than: 0, less_than 500000 }
  validates_associated :client
end
