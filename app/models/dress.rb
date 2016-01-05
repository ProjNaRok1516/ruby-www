class Dress < ActiveRecord::Base
  belongs_to :style
  belongs_to :material
  belongs_to :order
end
