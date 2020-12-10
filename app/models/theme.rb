class Theme < ApplicationRecord
  belongs_to :poster
  has_one_attached :illustration
  monetize :price_cents

  validates :name, presence: true
  validates :description, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
  validates :format, presence: true
  validates :price, presence: true
end
