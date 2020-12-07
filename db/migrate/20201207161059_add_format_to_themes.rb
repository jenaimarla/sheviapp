class AddFormatToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :format, :string
  end
end
