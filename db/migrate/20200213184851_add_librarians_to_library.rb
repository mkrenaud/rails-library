class AddLibrariansToLibrary < ActiveRecord::Migration[6.0]
  def change
    add_reference :libraries, :librarians, null: true, foreign_key: true
  end
end
