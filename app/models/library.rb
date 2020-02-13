# frozen_string_literal: true

class Library < ApplicationRecord
  has_and_belongs_to_many :books
  has_many :librarians
end
