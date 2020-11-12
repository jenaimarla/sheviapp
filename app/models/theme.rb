class Theme < ApplicationRecord
  belongs_to :poster

  validates :description, presence: true
end
