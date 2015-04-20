class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :telephone
      t.string :email

      t.timestamps null: false
    end
  end
end
