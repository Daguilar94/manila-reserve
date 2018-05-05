class User < ApplicationRecord
    enum role: [:admin, :visitor]
end
