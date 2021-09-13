class RemoveTypeFromProjectBugs < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_bugs, :type, :string
  end
end
