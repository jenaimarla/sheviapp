class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.references :image, foreign_key: true
      t.references :theme, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
