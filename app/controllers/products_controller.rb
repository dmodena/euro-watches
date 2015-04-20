class ProductsController < ApplicationController
  # Displays all products ordered by id
  def index
    @products = Product.all
  end
  # Displays info about a single product
  def show
    @product = Product.find(params[:id])
  end
end
