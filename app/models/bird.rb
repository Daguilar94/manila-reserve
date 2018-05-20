class Bird < ApplicationRecord
  has_one_attached :profile_image

  validates :popular_name, presence: true
  validates :cientific_name, presence: true
end
