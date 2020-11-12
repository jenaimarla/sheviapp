class Photo < ApplicationRecord
  has_many :images, dependent: :destroy

  validates :category, presence: true
end
