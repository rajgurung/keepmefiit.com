class WorkoutCategoriesController < ApplicationController
  before_action :set_workout_category, only: [:show, :edit, :update, :destroy]

  # GET /workout_categories
  # GET /workout_categories.json
  def index
    @workout_categories = WorkoutCategory.all
  end

  # GET /workout_categories/1
  # GET /workout_categories/1.json
  def show
  end

  # GET /workout_categories/new
  def new
    @workout_category = WorkoutCategory.new
  end

  # GET /workout_categories/1/edit
  def edit
  end

  # POST /workout_categories
  # POST /workout_categories.json
  def create
    @workout_category = WorkoutCategory.new(workout_category_params)

    respond_to do |format|
      if @workout_category.save
        format.html { redirect_to @workout_category, notice: 'Workout category was successfully created.' }
        format.json { render :show, status: :created, location: @workout_category }
      else
        format.html { render :new }
        format.json { render json: @workout_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_categories/1
  # PATCH/PUT /workout_categories/1.json
  def update
    respond_to do |format|
      if @workout_category.update(workout_category_params)
        format.html { redirect_to @workout_category, notice: 'Workout category was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_category }
      else
        format.html { render :edit }
        format.json { render json: @workout_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_categories/1
  # DELETE /workout_categories/1.json
  def destroy
    @workout_category.destroy
    respond_to do |format|
      format.html { redirect_to workout_categories_url, notice: 'Workout category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_category
      @workout_category = WorkoutCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_category_params
      params.require(:workout_category).permit(:name, :description)
    end
end
