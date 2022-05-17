class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @library.find(params[:id])
  end
end
