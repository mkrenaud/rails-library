# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :libraries_books
  has_many :books, through: :libraries_books
  has_many :librarians
  belongs_to :location
end
