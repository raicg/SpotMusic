module FavoritesHelper
  def favorite_button(favoritable)
    if current_user.favorite.where(favoritable: favoritable).exists?
      render_button(favoritable.id, favoritable.class, :delete, :fas)
    else
      render_button(favoritable.id, favoritable.class, :post, :far)
    end
  end

  private

  def render_button(id, type, method, icon_format)
    url = send("favorite_#{type.to_s.downcase}_path", id) #send is used to execute #type.to_s
    link_to url, class: "has-text-white", data: { remote: true, method: method, kind: type.to_s, id: id } do
      content_tag :i, "", class: "#{icon_format} fa-heart fa-2x"
    end
  end
end