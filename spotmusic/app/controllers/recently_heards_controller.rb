class RecentlyHeardsController < ApplicationController
  def new
    @recently_heard = current_user.recently_heards.new(album_id: params[:album_id])
    @recently_heard.save
    head :ok #return 200 OK no cabeçalho (https://httpstatuses.com/200)
  end
end
