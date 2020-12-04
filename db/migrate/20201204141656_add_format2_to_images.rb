class AddFormat2ToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :format2, :string
  end
end
