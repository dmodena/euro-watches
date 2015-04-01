ActiveAdmin.register Product do
  permit_params :brand_id, :model, :description, :movement, :case_diameter, :case_material, :strap_material, :swiss_made, :cosc, :geneva_hallmark, :price, :stock_quantity, :image

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
