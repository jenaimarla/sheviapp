class AddFormatToPosters < ActiveRecord::Migration[5.2]
  def change
    add_column :posters, :format, :string
  end
end
