class RemoveFormat2FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :format2, :string
  end
end
