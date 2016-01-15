class AddColumnsToControl < ActiveRecord::Migration
  def change
  	add_column :controls, :email, :string
  	add_column :controls, :list, :string
  	add_column :controls, :ost_id, :integer
  end
end
