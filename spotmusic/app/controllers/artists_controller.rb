class ArtistsController < ApplicationController
  def index
    @artist = Artist.find(params[:id])
  end
end