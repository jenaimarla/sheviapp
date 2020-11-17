class Poster < ApplicationRecord
  has_many :themes, dependent: :destroy
  has_one_attached :cover

  validates :title, presence: true
end
