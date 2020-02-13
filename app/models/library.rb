class Library < ApplicationRecord
  has_and_belongs_to_many :books
  belongs_to :parking
  belongs_to :location
end
