class PagesController < ApplicationController
  
  def index
    @activities = Activity.all.order('RANDOM()').first
  end

  def show
  end
end
