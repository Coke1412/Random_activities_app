class PagesController < ApplicationController
  
  def index
    if current_user
      @activities = current_user.activities.all.order('RANDOM()').first
    end
  end

  def show
  end
end
