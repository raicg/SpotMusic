class FavoritesController < ApplicationController
  def index
    @favorite_artists = current_user.favorite.where(favoritable_type: "Artist").map(&:favoritable)
    @favorite_albums = current_user.favorite.where(favoritable_type: "Album").map(&:favoritable)
    @favorite_songs = current_user.favorite.where(favoritable_type: "Song").map(&:favoritable)
  end

  def new
  end

  def delete
  end
end
