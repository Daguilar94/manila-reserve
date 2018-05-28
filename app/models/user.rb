class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_and_belongs_to_many :tours
    has_many :reviews, dependent: :destroy

    validates :name, presence: true
    validates :lastName, presence: true
    validates :personalId, presence: true
    validates :role, presence: true

    enum role: [:admin, :visitor]
end
