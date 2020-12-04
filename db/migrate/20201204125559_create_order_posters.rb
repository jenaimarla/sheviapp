class CreateOrderPosters < ActiveRecord::Migration[5.2]
  def change
    create_table :order_posters do |t|
      t.integer :quantity
      t.references :theme, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
