class Image < ApplicationRecord
  belongs_to :photo

  validates :name, presence: true
end
