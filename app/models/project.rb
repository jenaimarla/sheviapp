class Project < ApplicationRecord
  has_many :librarys, dependent: :destroy

  validates :project_type, presence: true
end
