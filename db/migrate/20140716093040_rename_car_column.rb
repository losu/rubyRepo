class RenameCarColumn < ActiveRecord::Migration
  def change
  	rename_column :cars, :model , :carModel
  end
end
 