class Material < ActiveRecord::Base
  validates :name, :price_per_m2, presence: true
  validates :name, length: { minimum: 3, maximum: 50 }
  validates :price, numericality: {greater_than: 0, less_than: 1000 }
  
end
