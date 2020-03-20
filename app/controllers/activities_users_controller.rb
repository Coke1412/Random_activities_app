class ActivitiesUsersController < ApplicationController
  before_action :set_activities_user, only: [:show, :edit, :update, :destroy]

  # GET /activities_users
  # GET /activities_users.json
  def index
    @categories = Category.all
    @activities = Activity.all
  end

  # GET /activities_users/1
  # GET /activities_users/1.json
  def show
  end

  # GET /activities_users/new
  def new
    
  end

  # GET /activities_users/1/edit
  def edit
  end

  # POST /activities_users
  # POST /activities_users.json
  def create
    cat = Category.find(params[:category_id])
    act = Activity.find(params[:activity_id])
 
      
      cat.save
      notice = { notice: 'Relation created'}
    redirect_to root_path, notice
  end

  # PATCH/PUT /activities_users/1
  # PATCH/PUT /activities_users/1.json
  def update
    
  end

  # DELETE /activities_users/1
  # DELETE /activities_users/1.json
  def destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activities_user
      @activities_user = ActivitiesUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activities_user_params
      params.fetch(:activities_user, {})
    end
end
