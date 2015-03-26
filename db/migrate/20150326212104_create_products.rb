class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :brand, index: true
      t.string :model
      t.text :description
      t.string :movement
      t.decimal :case_diameter
      t.string :case_material
      t.string :strap_material
      t.boolean :swiss_made
      t.boolean :cosc
      t.boolean :geneva_hallmark
      t.decimal :price
      t.integer :stock_quantity

      t.timestamps null: false
    end
    add_foreign_key :products, :brands
  end
end
