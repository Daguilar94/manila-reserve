class User < ApplicationRecord
    has_and_belongs_to_many :tours
    has_many :reviews, dependent: :destroy

    enum role: [:admin, :visitor]
end
