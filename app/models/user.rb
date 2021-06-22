class User < ApplicationRecord
    has_many :notes
    has_many :categories, through: :notes
end
