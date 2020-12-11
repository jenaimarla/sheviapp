class AddDescriptionToCreations < ActiveRecord::Migration[5.2]
  def change
    add_column :creations, :description, :text
  end
end
