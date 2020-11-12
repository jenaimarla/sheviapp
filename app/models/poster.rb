class Poster < ApplicationRecord
  has_many :themes, dependent: :destroy

  validates :title, presence: true
end
