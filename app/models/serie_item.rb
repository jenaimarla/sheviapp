class SerieItem < ApplicationRecord
  belongs_to :serie
  belongs_to :creation
  monetize :price_cents


 #  def total_pay
 #    total = 0
 #    self.serie_items.each do |item|
 #      next if item.quantity.nil?
 #      total += item.quantity * item.creation.price
 #    end
 #    return total
 #  end

 # def my_orders
 #   @my_orders = current_user.orders.where(payed: false)
 #   @total_orders = @my_orders.map(&:total_pay).sum
 #  end

  def unit_price
    if persisted?
      self[:price]
    else
      creation.price
    end
  end

  def total
    price * quantity
  end

  private

  def set_unit_price
    self[:price] = price
  end

  def set_total
    self[:total] = total * quantity
  end

end
