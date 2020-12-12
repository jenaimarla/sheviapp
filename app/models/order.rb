class Order < ApplicationRecord

  belongs_to :creation
  monetize :amount_cents


  def total_pay
    total = 0
    self.creations.each do |creation|
      next if creation.quantity.nil?
      total += creation.quantity * creation.price
    end
    return total
  end
end
