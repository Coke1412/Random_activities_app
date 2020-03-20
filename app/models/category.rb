class Category < ApplicationRecord
    has_many :activities, dependent: :destroy
    #si borro las categorías se borran las actividades
    has_one_attached :image
    validates :name, presence: true
    validates :description, presence: true
    

    def to_s
        name
        
    end


end
