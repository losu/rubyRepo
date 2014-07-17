class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :fuelType
      t.string :power

      t.timestamps
    end
  end
end
