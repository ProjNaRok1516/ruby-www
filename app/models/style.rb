class Style < ActiveRecord::Base
  validates :name,:image,:material_amout, presence: true
  validates :name, length: { minimum: 3, maximum:50 }
  validates :material_amout, numericality: { greater_than:0, less_than:5 }
  
end
