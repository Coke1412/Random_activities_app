class ActivitiesUsersController < ApplicationController

    def index

        @categories = Category.all
        
        
    end


end
