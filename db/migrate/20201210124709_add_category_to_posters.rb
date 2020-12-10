class AddCategoryToPosters < ActiveRecord::Migration[5.2]
  def change
    add_column :posters, :category, :string
  end
end
