class FavoritesController < ApplicationController
  def index
    @favorite_artists = current_user.favorite.where(favoritable_type: "Artist").map(&:favoritable)
    @favorite_albums = current_user.favorite.where(favoritable_type: "Album").map(&:favoritable)
    @favorite_songs = current_user.favorite.where(favoritable_type: "Song").map(&:favoritable)
  end

  def new
    @favoritable = current_user.favorite.new(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.save
  end

  def delete
    @favoritable = current_user.favorite.find_by(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.destroy
  end

end
