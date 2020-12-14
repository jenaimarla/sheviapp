class Image < ApplicationRecord
  belongs_to :photo
  has_one_attached :image
  monetize :price_cents

  validates :name, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
end
