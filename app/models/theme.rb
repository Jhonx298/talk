class Theme < ApplicationRecord
  has_many :theme_users
  has_many :users, through: :theme_users
  has_many :messages
  
  validates :theme_name, presence: true

  def self.search(search)
    if search != ""
      Theme.where('theme_name LIKE(?)', "%#{search}%")
    else
      Theme.all
    end
  end
end
