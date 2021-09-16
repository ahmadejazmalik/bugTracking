class ProjectBug < ApplicationRecord
  belongs_to :project
  has_many :user_bugs
  has_many :users, through: :user_bugs
  has_one_attached :screenshot
  validates :title, uniqueness: true
  # validates :correct_image_type
  # private
  # def correct_image_type
  #   if screenshot.attached? && !screenshot.content_type.in?(%w(screenshot/gif,screenshot/png))
  #     errors.add(:screenshot,'Must be a Gif and Png')
  #   end
  # end
end