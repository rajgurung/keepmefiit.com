class UserWorkoutsController < ApplicationController
  before_action :set_user_workout, only: [:show, :edit, :update, :destroy]

  respond_to :html, :js

  # GET /user_workouts
  # GET /user_workouts.json
  def index
    @user_workouts = UserWorkout.all
  end

  # GET /user_workouts/1
  # GET /user_workouts/1.json
  def show
  end

  # GET /user_workouts/new
  def new
    @user_workout = UserWorkout.new
  end

  # GET /user_workouts/1/edit
  def edit
  end

  # POST /user_workouts
  # POST /user_workouts.json
  def create
    @user_workout = UserWorkout.new(user_workout_params)

    respond_to do |format|
      if @user_workout.save
        format.html { redirect_to @user_workout, notice: 'User workout was successfully created.' }
        format.json { render :show, status: :created, location: @user_workout }
      else
        format.html { render :new }
        format.json { render json: @user_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_workouts/1
  # PATCH/PUT /user_workouts/1.json
  def update
    respond_to do |format|
      if @user_workout.update(user_workout_params)
        format.html { redirect_to @user_workout, notice: 'User workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_workout }
      else
        format.html { render :edit }
        format.json { render json: @user_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_workouts/1
  # DELETE /user_workouts/1.json
  def destroy
    @user_workout.destroy
    respond_to do |format|
      format.html { redirect_to user_workouts_url, notice: 'User workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_workout
    @workout = _workout.where('name ILIKE ?', "%#{params[:term]}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_workout
      @user_workout = UserWorkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_workout_params
      params.require(:user_workout).permit(:set, :rep, :weight, :workout_id, :user_id)
    end

    def _workout
      Workout
    end
end
