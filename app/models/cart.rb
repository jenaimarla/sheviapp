class Cart < ApplicationRecord
  has_many :items


  def total_pay
    total = 0
    self.items.each do |item|
      next if item.quantity.nil?
      total += item.quantity * item.image.price_a1
    end
    return total
  end

end
