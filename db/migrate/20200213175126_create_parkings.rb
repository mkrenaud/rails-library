class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|
      t.boolean :hasparking
      t.string :notes

      t.timestamps
    end
  end
end
