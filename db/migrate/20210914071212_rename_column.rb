class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :project_bugs, :type, :bug_type
  end
end
