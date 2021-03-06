class Dress < ActiveRecord::Base
  belongs_to :style
  belongs_to :material
  belongs_to :order
  
  validates :name, :cost, presence: true
  validates :name, length: { minimum: 3, maximum: 50 } 
  validates :cost, numericality: { greater_than: 0, less_than: 5000 }

  validates_associated :style, :material, :order
  validates_presence_of :style, :material, :order
end
