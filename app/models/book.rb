# frozen_string_literal: true

class Book < ApplicationRecord
  has_many :libraries_books
  has_many :libraries, through: :libraries_books
end
