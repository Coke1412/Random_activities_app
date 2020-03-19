class Activity < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :users
    #si borro la actividad se borran los usuarios de la relación

    has_one_attached :image


    def to_s
        name
        
    end
    
end
