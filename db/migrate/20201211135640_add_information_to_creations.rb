class AddInformationToCreations < ActiveRecord::Migration[5.2]
  def change
    add_column :creations, :information, :string
  end
end
