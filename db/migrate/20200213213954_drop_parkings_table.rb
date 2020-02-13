# frozen_string_literal: true

class DropParkingsTable < ActiveRecord::Migration[6.0]
  def change
    remove_reference :libraries, :parkings, null: false, foreign_key: true
    drop_table :parkings
  end
end
