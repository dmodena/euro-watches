class Product < ActiveRecord::Base
  belongs_to :brand
  has_many :complication, through: :complications_products
  mount_uploader :image, ProductImageUploader
end
