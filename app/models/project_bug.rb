class ProjectBug < ApplicationRecord
  belongs_to :project
  has_many :user_bugs
  has_many :users, through: :user_bugs
  has_one_attached :screenshot
  # validates :screenshot, blob: { content_type: ['image/png', 'image/gif'] }
end
