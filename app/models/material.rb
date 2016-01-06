class Material < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :name, length: { minimum: 3, maximum: 50 }
  validates :price, numerality: {greater_than: 0, less_than: 1000 }
  
end
