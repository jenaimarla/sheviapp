class RemoveTitleFromThemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :themes, :title, :string
  end
end
