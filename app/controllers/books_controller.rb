# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.includes(:libraries).find(params[:id])
  end
end
