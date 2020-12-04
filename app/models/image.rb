class Image < ApplicationRecord
  belongs_to :photo
  has_many :order_photos
  has_one_attached :image

  validates :name, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
  validates :format1, presence: true
  validates :format2, presence: true
  validates :price_a1, presence: true
  validates :price_a2, presence: true
end
