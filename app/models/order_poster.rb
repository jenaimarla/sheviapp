class OrderPoster < ApplicationRecord
  belongs_to :theme
  belongs_to :cart

  validates :quantity, presence: true
end
