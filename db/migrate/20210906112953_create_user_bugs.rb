class CreateUserBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_bugs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project_bug, null: false, foreign_key: true

      t.timestamps
    end
  end
end
