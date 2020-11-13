class AddTitleToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :title, :string
  end
end
