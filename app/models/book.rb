class Book < ApplicationRecord
  validates :image_url, presence: true, unless: -> { image_url.present? }
  validates :genre_id, presence: true
  validates :title, presence: true
  validates :author, presence: true
  belongs_to :genre
  has_many :likes
  has_many :bookmarks
  has_many :users, through: :bookmarks
end
