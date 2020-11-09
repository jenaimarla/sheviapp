class Photo < ApplicationRecord

  validates :category, presence: true
end
