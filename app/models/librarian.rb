class Librarian < ApplicationRecord
  belongs_to :library
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
end
