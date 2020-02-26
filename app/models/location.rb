# frozen_string_literal: true

class Location < ApplicationRecord
  has_one :library
  validates :address, :coordinates, presence: true
end
