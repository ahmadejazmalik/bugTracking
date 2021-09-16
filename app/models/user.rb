class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :user_bugs
  has_many :project_bugs, through: :user_bugs
  # validates :name,:email, :user_type, :encrypted_password, presence: true,uniqueness: true
end
