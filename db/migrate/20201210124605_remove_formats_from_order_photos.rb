class RemoveFormatsFromOrderPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_photos, :formats, :text
  end
end
