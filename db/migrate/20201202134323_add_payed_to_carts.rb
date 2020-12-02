class AddPayedToCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :payed, :boolean, default: false
  end
end
