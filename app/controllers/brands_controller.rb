class BrandsController < ApplicationController
  # Displays all brands ordered by id
  def index
    @brands = Brand.all
  end
  # Displays info about a single brand
  def show
    @brand = Brand.find(params[:id])
  end
end
