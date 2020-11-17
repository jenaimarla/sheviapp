class Library < ApplicationRecord
  belongs_to :project
  has_one_attached :printing

  validates :about, presence: true

end
