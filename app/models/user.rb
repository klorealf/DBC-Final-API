class User < ApplicationRecord
  validates :first_name, :last_name, :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password

  has_many :assignment_chores
  has_many :household_users
  has_many :chores, through: :assignment_chores
  has_many :households, through: :household_users
end
