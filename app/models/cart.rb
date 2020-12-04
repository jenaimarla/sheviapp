class Cart < ApplicationRecord
  has_many :order_photos
  has_many :order_posters


  def total_pay
    total = 0
    self.order_photos.each do |order_photo|
      next if order_photo.quantity.nil?
      if order_photo.formats == 'A1'
        total += order_photo.quantity * order_photo.image.price_a1
      else order_photo.formats == 'A2'
        total += order_photo.quantity * order_photo.image.price_a2
      end
    end
    self.order_posters.each do |order_poster|
      next if order_poster.quantity.nil?
      total += order_poster.quantity * order_poster.theme.price_a1 || order_poster.theme.price_a2
    end
    return total
  end

end
