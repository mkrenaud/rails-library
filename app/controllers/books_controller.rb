# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.order(:title).page params[:page]
  end

  def show
    @books = Book.includes(:libraries).find(params[:id])
  end
end
