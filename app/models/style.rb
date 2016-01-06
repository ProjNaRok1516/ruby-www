class Style < ActiveRecord::Base
  validates :name,:image,:material_amout, presence: true
  validates :name, length: { minimum: 3, maximum:50 }
  validates :material_amout, length: { minimum: 1, maximum:5 }
  
end
