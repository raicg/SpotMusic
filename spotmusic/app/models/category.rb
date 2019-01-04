class Category < ApplicationRecord

  validates :name, presence: true

  has_one_attached :image

  has_many :album

  def artist
    Artist.joins(:album).where(albums:{ id: self.album.ids }).distinct
  end

  def song
    Song.joins(:album).where(albums:{ id: self.album.ids }).distinct
  end 
end
