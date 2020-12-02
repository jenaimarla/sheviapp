class Item < ApplicationRecord
  belongs_to :image
  belongs_to :theme
  belongs_to :cart

  validates :quantity, presence: true
end
