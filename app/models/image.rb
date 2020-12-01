class Image < ApplicationRecord
  belongs_to :photo
  has_one_attached :image

  validates :name, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
  validates :price_a1, presence: true
  validates :price_a2, presence: true
end
