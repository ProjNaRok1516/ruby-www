class Client < ActiveRecord::Base
  belongs_to :address
  validates_associated :address
   validates :firstname, :lastname, :phone, presence: true
   validates :firstname, :lastname, length: { minimum: 3, maximum: 50 } 
   validates :phone, length: { is: 9 }
   validates :phone, format: { with: [1-9][0-9]{8}}
   validates :firstname, :lastname, format:  { with: /[A-Z][a-z]*/, message: "allows only capital letter at the beggining" }
   
  
end
