class DropMyOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :my_orders
  end
end
