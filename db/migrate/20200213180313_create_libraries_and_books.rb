# frozen_string_literal: true

class CreateLibrariesAndBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.boolean :wifi
      t.boolean :accessability
    #  t.references :parkings, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.timestamps
    end

    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :author
      t.timestamps
    end

    create_table :libraries_books, id: false do |t|
      t.belongs_to :libraries
      t.belongs_to :books
    end
  end
end
