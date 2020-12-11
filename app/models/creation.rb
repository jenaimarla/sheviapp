class Creation < ApplicationRecord

  monetize :price_cents
  has_one_attached :svg


  validates :name, presence: true
  validates :format, presence: true
  validates :description, presence: true
  validates :price, presence: true


end
