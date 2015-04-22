class Complication < ActiveRecord::Base
  has_many :product, through: :complications_products
end
