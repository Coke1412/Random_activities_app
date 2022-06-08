class Category < ApplicationRecord
    has_many :activities, dependent: :destroy
    
    has_one_attached :image
    
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :image, presence: true
    validates :description, presence: true
    
    def to_s
        name
    end
end
