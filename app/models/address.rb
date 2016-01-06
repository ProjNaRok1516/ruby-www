class Address < ActiveRecord::Base
  validates :street, :building, :city, :postalcode, presence: true
   validates :street, :city length: { minimum: 2 }    
   validates :street,:city length: { maximum: 50 }
   validates :building, length: { minimum: 1 }    
   validates :building length: { maximum: 20 }
   validates :postalcode length: { minimum: 5 }    
   validates :postalcode length: { maximum: 5 }  
   validates :postalcode format: { with: /[0-9]{2}-[0-9]{3}/,
    message: "only allows ints" }
end
