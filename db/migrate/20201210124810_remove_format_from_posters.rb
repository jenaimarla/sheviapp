class RemoveFormatFromPosters < ActiveRecord::Migration[5.2]
  def change
    remove_column :posters, :format, :string
  end
end
