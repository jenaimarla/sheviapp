class RemoveDetailsFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :details, :string
  end
end
