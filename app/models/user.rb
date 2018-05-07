class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_and_belongs_to_many :tours
    has_many :reviews, dependent: :destroy

    enum role: [:admin, :visitor]
end
