class Serie < ApplicationRecord
  has_many :serie_items
  # before_save :set_subtotal

  # def set_subtotal
  #   serie_items.collect { |serie_item| serie_item.valid? ? serie_item.price*serie_item.quantity : 0 }.sum
  # end

  # private

  # def set_subtotal
  #   self[:subtotal] = subtotal
  # end

end
