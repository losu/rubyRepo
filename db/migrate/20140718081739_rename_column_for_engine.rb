class RenameColumnForEngine < ActiveRecord::Migration
  def change
  	  	rename_column :engines, :fuelType , :fuel_type

  end
end
