class ListOfExercisesController < ApplicationController
  def index
    @list_of_exercises = ListOfExercise.all
  end

  def set
  end

  def user
  end

  def show
    @list_of_exercise = ListOfExercise.find(params[:id])
  end

  def new
    @list_of_exercise = ListOfExercise.new
  end

  def create
    @list_of_exercise = ListOfExercise.new
    @list_of_exercise.exercise_category = params[:exercise_category]
    @list_of_exercise.sets = params[:sets]
    @list_of_exercise.user_id = params[:user_id]
    @list_of_exercise.reps = params[:reps]
    @list_of_exercise.time_in_minutes = params[:time_in_minutes]
    @list_of_exercise.day_of_week = params[:day_of_week]
    @list_of_exercise.exercise_name = params[:exercise_name]

    if @list_of_exercise.save
      redirect_to "/list_of_exercises", :notice => "List of exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @list_of_exercise = ListOfExercise.find(params[:id])
  end

  def update
    @list_of_exercise = ListOfExercise.find(params[:id])

    @list_of_exercise.exercise_category = params[:exercise_category]
    @list_of_exercise.sets = params[:sets]
    @list_of_exercise.user_id = params[:user_id]
    @list_of_exercise.reps = params[:reps]
    @list_of_exercise.time_in_minutes = params[:time_in_minutes]
    @list_of_exercise.day_of_week = params[:day_of_week]
    @list_of_exercise.exercise_name = params[:exercise_name]

    if @list_of_exercise.save
      redirect_to "/list_of_exercises", :notice => "List of exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @list_of_exercise = ListOfExercise.find(params[:id])

    @list_of_exercise.destroy

    redirect_to "/list_of_exercises", :notice => "List of exercise deleted."
  end
end
