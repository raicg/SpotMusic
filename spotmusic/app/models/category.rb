class Category < ApplicationRecord

  validates :name, presence: true

  has_one_attached :image

  has_many :album

  def artist
    Artist.joins(:album).where(album: {id: self.album.id}).distinct
  end

  def song
    Song.joins(:album).where(album: {id: self.album.id}).distinct
  def 
end
