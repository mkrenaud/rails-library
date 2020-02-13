class RemoveLibrariansFromLibraries < ActiveRecord::Migration[6.0]
  def change
    remove_reference :libraries, :librarians, null: false, foreign_key: true
  end
end
