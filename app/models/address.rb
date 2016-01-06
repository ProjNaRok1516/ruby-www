class Address < ActiveRecord::Base
  validates :street, :building, :city, :postalcode, presence: true
  validates :street, :city, length: { minimum: 2, maximum: 50 }
  validates :building, length: { minimum: 1, maximum: 20 }
  validates :postalcode, length: { is: 5 }  
  validates :postalcode, format: { with: /[0-9]{2}\-[0-9]{3}/, message: "only supports format xx-xxx" }
end
