class Theme < ApplicationRecord
  belongs_to :poster
  has_many :items
  has_one_attached :illustration

  validates :title, presence: true
  validates :description, presence: true
  validates :information, presence: true
  validates :pre_order, presence: true
  validates :price_a1, presence: true
  validates :price_a2, presence: true
end
