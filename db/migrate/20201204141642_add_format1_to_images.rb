class AddFormat1ToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :format1, :string
  end
end
