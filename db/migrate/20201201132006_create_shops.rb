class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.references :image, foreign_key: true
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
