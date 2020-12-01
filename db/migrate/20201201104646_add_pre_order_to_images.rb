class AddPreOrderToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :pre_order, :string
  end
end
