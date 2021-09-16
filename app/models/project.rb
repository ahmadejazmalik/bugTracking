class Project < ApplicationRecord
  has_many :project_bugs, dependent: :destroy
  has_many :user_projects
  has_many :users,through: :user_projects, dependent: :delete_all
    # validates :name ,presence: true
end
