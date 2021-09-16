class AddAssginedIdToProjectBug < ActiveRecord::Migration[6.1]
  def change
    add_column :project_bugs, :assigned_id, :integer
  end
end
