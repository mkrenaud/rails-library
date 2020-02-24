class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @libraries = Library.includes(:librarians, :books).find(params[:id])
  end
end
