class CreateComplications < ActiveRecord::Migration
  def change
    create_table :complications do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
