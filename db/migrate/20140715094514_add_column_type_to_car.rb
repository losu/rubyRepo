class AddColumnTypeToCar < ActiveRecord::Migration
  def change
    add_column :cars, :type, :string
  end
end
