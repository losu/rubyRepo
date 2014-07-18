class RenameColumnForEngine2 < ActiveRecord::Migration
  def change
  	rename_column :engines, :fuel_type , :fueltype
  end
end
