class AlbumsController < ApplicationController
  def index
    @album = Album.find(params[:id])
  end
end
