class AddPriceToWorks < ActiveRecord::Migration[5.2]
  def change
    add_monetize :works, :price, currency: { present: false }
  end
end
