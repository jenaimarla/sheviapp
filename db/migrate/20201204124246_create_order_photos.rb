class CreateOrderPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :order_photos do |t|
      t.integer :quantity
      t.references :image, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
