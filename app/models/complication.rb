class Complication < ActiveRecord::Base
  has_many :brand, through: :complications_products
end
