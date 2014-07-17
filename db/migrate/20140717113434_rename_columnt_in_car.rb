class RenameColumntInCar < ActiveRecord::Migration
  def change
  	rename_column :cars, :carModel , :car_model
  end
end
