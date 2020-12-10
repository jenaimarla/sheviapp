class CreateSerieItems < ActiveRecord::Migration[5.2]
  def change
    create_table :serie_items do |t|
      t.integer :quantity
      t.integer :creation_id
      t.integer :serie_id
      t.decimal :total

      t.timestamps
    end
  end
end
