class Dress < ActiveRecord::Base
  belongs_to :style
  belongs_to :material
  belongs_to :order
  validates_associated :style
  validates_associated :material
  validates_associated :order
end
