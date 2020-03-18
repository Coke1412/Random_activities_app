class UserChosesController < ApplicationController
  before_action :set_user_chose, only: [:show, :edit, :update, :destroy]

  # GET /user_choses
  # GET /user_choses.json
  def index
    @user_choses = UserChose.all
  end

  # GET /user_choses/1
  # GET /user_choses/1.json
  def show
  end

  # GET /user_choses/new
  def new
    @user_chose = UserChose.new
  end

  # GET /user_choses/1/edit
  def edit
  end

  # POST /user_choses
  # POST /user_choses.json
  def create
    @user_chose = UserChose.new(user_chose_params)

    respond_to do |format|
      if @user_chose.save
        format.html { redirect_to @user_chose, notice: 'User chose was successfully created.' }
        format.json { render :show, status: :created, location: @user_chose }
      else
        format.html { render :new }
        format.json { render json: @user_chose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_choses/1
  # PATCH/PUT /user_choses/1.json
  def update
    respond_to do |format|
      if @user_chose.update(user_chose_params)
        format.html { redirect_to @user_chose, notice: 'User chose was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_chose }
      else
        format.html { render :edit }
        format.json { render json: @user_chose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_choses/1
  # DELETE /user_choses/1.json
  def destroy
    @user_chose.destroy
    respond_to do |format|
      format.html { redirect_to user_choses_url, notice: 'User chose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_chose
      @user_chose = UserChose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_chose_params
      params.fetch(:user_chose, {})
    end
end
