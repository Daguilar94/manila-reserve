class Tour < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :reviews, as: :reviewable

    has_and_belongs_to_many :coworkers
end
