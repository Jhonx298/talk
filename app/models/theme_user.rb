class ThemeUser < ApplicationRecord
  belongs_to :theme
  belongs_to :user
end
