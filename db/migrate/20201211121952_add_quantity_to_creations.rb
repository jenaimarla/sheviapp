class AddQuantityToCreations < ActiveRecord::Migration[5.2]
  def change
    add_column :creations, :quantity, :integer
  end
end
