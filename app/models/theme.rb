class Theme < ApplicationRecord
  belongs_to :poster
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :information, presence: true
end
