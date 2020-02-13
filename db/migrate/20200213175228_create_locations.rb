class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :coordinates

      t.timestamps
    end
  end
end
