class OrderPhoto < ApplicationRecord
  belongs_to :image
  belongs_to :cart

  validates :quantity, presence: true
end