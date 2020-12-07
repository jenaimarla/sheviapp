class AddFormatToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :format, :string
  end
end
