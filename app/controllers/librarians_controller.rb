# frozen_string_literal: true

class LibrariansController < ApplicationController
  def index
    @librarians = Librarian.all
  end

  def show
    @librarians = Librarian.find(params[:id])
  end
end
