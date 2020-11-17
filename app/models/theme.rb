class Theme < ApplicationRecord
  belongs_to :poster
  has_one_attached :illustration

  validates :title, presence: true
  validates :description, presence: true
  validates :information, presence: true
end
