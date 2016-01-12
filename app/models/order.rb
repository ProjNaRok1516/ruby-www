class Order < ActiveRecord::Base
  belongs_to :client
  has_many :dresses

  validates :data, :total_cost, :status, presence: true
  validates :total_cost, numericality: { greater_than: 0, less_than: 500000 }
  validates :status, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1, only_integer: true }
  validates :data, format: { with: /[2-9]\d{3}\-[0-1]\d\-[0-3]\d\ [0-2]\d(\:[0-5]\d){2}/ }

  validates_associated :client
  validates_presence_of :client
end
