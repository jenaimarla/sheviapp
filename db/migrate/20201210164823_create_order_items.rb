class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :creation_id
      t.integer :serie_id
      t.decimal :total

      t.timestamps
    end
  end
end
