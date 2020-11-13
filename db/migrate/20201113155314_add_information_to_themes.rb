class AddInformationToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :information, :string
  end
end
