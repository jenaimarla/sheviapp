class AddPreOrderToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :pre_order, :string
  end
end
