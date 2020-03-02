class Category < ApplicationRecord
    has_many :activities, dependent: :destroy
    has_one_attached :image
end
