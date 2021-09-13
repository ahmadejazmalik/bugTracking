class UserBug < ApplicationRecord
  belongs_to :user
  belongs_to :project_bug
end
