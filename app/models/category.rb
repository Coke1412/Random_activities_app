class Category < ApplicationRecord
    has_many :activities
    has_one_attached :image
end
