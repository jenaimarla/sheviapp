class Card < ApplicationRecord
  # has_many :serie_items
  # has_many :series
  monetize :amount_cents
  has_many :creations
end
