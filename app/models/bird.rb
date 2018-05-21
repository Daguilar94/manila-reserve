class Bird < ApplicationRecord
  has_one_attached :profile_image
  has_many_attached :specie_images

  validates :popular_name, presence: true
  validates :cientific_name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :size, presence: true

  enum status: [:Extinct, :Extinct_in_the_Wild, :Critically_Endangered, :Endangered, :Vulnerable, :Near_Threatened, :Least_Concern, :Data_Deficient, :Not_Evaluated]

  enum size: [:small, :medium, :large]
end
