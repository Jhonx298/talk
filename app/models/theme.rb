class Theme < ApplicationRecord
  has_many :theme_users
  has_many :users, through: :theme_users
  has_many :messages
  
  validates :theme_name, presence: true
end
