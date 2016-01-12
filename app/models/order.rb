class Order < ActiveRecord::Base
  belongs_to :client

  validates :data, :total_cost, :status, presence: true
  validates :total_cost, numericality: { greater_than: 0, less_than: 500000 }
  validates :status, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1, only_integer: true }
  validates :data, format: { with: /[0-3][0-9]\-[0-1][0-9]\-[2-9][0-9]{3}/ }

  validates_associated :client
  validates_presence_of :client
end
