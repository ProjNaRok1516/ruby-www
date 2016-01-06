class Address < ActiveRecord::Base
  validates :street, :city, :postalcode, presence: true
end
