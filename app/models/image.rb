class Image < ApplicationRecord
  belongs_to :photo
  has_many :order_photos
  has_one_attached :image

  validates :name, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
  validates :format, presence: true
  validates :price_a1, presence: true
end
