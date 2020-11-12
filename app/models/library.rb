class Library < ApplicationRecord
  belongs_to :project

  validates :about, presence: true
end
