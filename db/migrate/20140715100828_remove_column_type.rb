class RemoveColumnType < ActiveRecord::Migration
  def change
  	remove_column :cars, :type
  	add_column :cars, :cartype , :string
  end
end
