class ComplicationProductAssociation < ActiveRecord::Migration
  def change
    create_table :complications_products, id: false do |t|
      t.belongs_to :complication, index: true
      t.belongs_to :product, index: true
    end
  end
end
