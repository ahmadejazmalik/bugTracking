class Project < ApplicationRecord
  has_many :project_bugs
  has_many :user_projects
  has_many :users,through: :user_projects
end
