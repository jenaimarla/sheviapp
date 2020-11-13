class Project < ApplicationRecord
  has_many :librarys, dependent: :destroy
  has_one_attached :photo

  validates :project_type, presence: true
  validates :details, presence: true
end
