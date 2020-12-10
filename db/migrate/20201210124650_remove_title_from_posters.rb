class RemoveTitleFromPosters < ActiveRecord::Migration[5.2]
  def change
    remove_column :posters, :title, :string
  end
end
