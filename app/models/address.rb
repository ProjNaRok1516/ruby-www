class Address < ActiveRecord::Base
  validates :street, :building, :city, :postalcode, presence: true
end
