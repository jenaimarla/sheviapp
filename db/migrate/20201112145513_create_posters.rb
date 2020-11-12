class CreatePosters < ActiveRecord::Migration[5.2]
  def change
    create_table :posters do |t|
      t.string :title

      t.timestamps
    end
  end
end
