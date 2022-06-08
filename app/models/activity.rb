class Activity < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :users
    #if activity is destroyed, related users too

    has_one_attached :image

    validates :name, presence: true
    validates :image, presence: true
    validates :category_id, presence: true
    
    def to_s
        name
    end 
end
