class Serie < ApplicationRecord
  belongs_to :user
  has_many :serie_items

  # def total_pay
  #   total = 0
  #   self.serie_items.each do |item|
  #     next if item.quantity.nil?
  #     total += item.quantity * item.creation.price
  #   end
  #   return total
  # end

  def total_pay
    total = 0
    @serie_items.each do |item|
      # next if item.quantity.nil?
      total += item.quantity * item.creation.price
    end
    return total
  end

  # before_save :set_subtotal

  # def set_subtotal
  #   serie_items.collect { |serie_item| serie_item.valid? ? serie_item.price*serie_item.quantity : 0 }.sum
  # end

  # private

  # def set_subtotal
  #   self[:subtotal] = subtotal
  # end

end
