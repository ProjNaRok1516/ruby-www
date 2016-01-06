class Dress < ActiveRecord::Base
  belongs_to :style
  belongs_to :material
  belongs_to :order
  validates_associated :style
  validates_associated :material
  validates_associated :order
  
   validates :name, :cost, :style, :material, :order, presence: true
   validates :name, length: { minimum: 3, maximum:50 } 
   validates :cost, numerality: {greater_than: 0, less_than:5000}
end
