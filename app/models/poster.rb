class Poster < ApplicationRecord
  has_many :themes, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
end
