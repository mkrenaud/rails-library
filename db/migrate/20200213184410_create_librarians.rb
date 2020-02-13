class CreateLibrarians < ActiveRecord::Migration[6.0]
  def change
    create_table :librarians do |t|
      t.string :name
      t.integer :age
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
