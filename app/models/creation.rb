class Creation < ApplicationRecord
  has_many :serie_items, dependent: :destroy
  monetize :price_cents
  belongs_to :card
  has_one_attached :svg


  validates :name, presence: true
  validates :format, presence: true
  validates :description, presence: true



end
