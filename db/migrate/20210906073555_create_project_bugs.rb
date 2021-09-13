class CreateProjectBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :project_bugs do |t|
      t.string :title
      t.date :deadline
      t.string :type
      t.belongs_to :project
      t.timestamps
    end
  end
end
