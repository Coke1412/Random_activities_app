class Category < ApplicationRecord
    has_many :activities
    has_many_attached :image
end
