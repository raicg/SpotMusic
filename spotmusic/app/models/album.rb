class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :song

  validates :title, presence: true
  validates :date, presence: true

  has_one_attached :cover
end
