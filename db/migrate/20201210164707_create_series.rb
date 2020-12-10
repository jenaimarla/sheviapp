class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.decimal :total

      t.timestamps
    end
  end
end
