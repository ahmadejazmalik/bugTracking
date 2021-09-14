class AddStatusTypeSecreenshotDescriptionToProjectBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :project_bugs, :status, :string
    add_column :project_bugs, :type, :string
    add_column :project_bugs, :screenshot, :string
    add_column :project_bugs, :description, :text
  end
end
