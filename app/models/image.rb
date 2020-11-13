class Image < ApplicationRecord
  belongs_to :photo
  has_one_attached :photo

  validates :name, presence: true
  validates :information, presence: true
end
