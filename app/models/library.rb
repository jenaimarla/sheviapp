class Library < ApplicationRecord
  belongs_to :project
  has_one_attached :photo

  validates :about, presence: true

end
