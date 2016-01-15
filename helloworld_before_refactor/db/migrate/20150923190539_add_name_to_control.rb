class AddNameToControl < ActiveRecord::Migration
  def change
  	add_column :controls, :name, :string
  end
end
