class Material < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :name, length: { minimum: 3, maximum: 50 }
  validates :price, length: { minimum: 1, maximum: 5 }
end
