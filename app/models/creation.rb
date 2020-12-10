class Creation < ApplicationRecord
  has_many :serie_items
   monetize :price_cents
   belongs_to :card
end
