class Product < ActiveRecord::Base
  belongs_to :brand
  has_and_belongs_to_many :complication
  mount_uploader :image, ProductImageUploader
end
