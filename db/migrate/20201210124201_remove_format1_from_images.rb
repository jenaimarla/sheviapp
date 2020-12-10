class RemoveFormat1FromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :format1, :string
  end
end
