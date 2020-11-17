class Photo < ApplicationRecord
  has_many :images, dependent: :destroy
  has_one_attached :photo


  validates :category, presence: true
  validates :description, presence: true
end
