class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :sku
      t.text :description
      t.string :ost_id
      t.integer :priority

      t.timestamps null: false
    end
  end
end
