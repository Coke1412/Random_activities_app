class ActivitiesUsersController < ApplicationController

    def index

        @categories = Category.all
        @activities = Activity.all
        
    end


end
