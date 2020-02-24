# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_213_213_954) do
  create_table 'books', force: :cascade do |t|
    t.string 'title'
    t.string 'genre'
    t.string 'author'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'librarians', force: :cascade do |t|
    t.string 'name'
    t.integer 'age'
    t.integer 'library_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['library_id'], name: 'index_librarians_on_library_id'
  end

  create_table 'libraries', force: :cascade do |t|
    t.string 'name'
    t.boolean 'wifi'
    t.boolean 'accessability'
    t.integer 'location_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['location_id'], name: 'index_libraries_on_location_id'
  end

  create_table 'libraries_books', id: false, force: :cascade do |t|
    t.integer 'library_id'
    t.integer 'book_id'
    t.index ['book_id'], name: 'index_libraries_book_on_book_id'
    t.index ['library_id'], name: 'index_libraries_book_on_library_id'
  end

  create_table 'locations', force: :cascade do |t|
    t.string 'address'
    t.string 'coordinates'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'librarians', 'libraries'
  add_foreign_key 'libraries', 'locations'
end
