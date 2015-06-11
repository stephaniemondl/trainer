class UsersController < ApplicationController

def index
    @users = Users.all
  end

  def set
  end

  def user
  end

  def show
    @users = User.find current_user.id
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new
    @users.name = params[:name]
    @users.age = params[:age]
    @users.weight = params[:weight]
    @users.workouts_a_week = params[:workouts_a_week]

    if @users.save
      redirect_to "/users", :notice => "List of exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])

    @users.name = params[:name]
    @users.age = params[:age]
    @users.weight = params[:weight]
    @users.workouts_a_week = params[:workouts_a_week]

    if @users.save
      redirect_to "/users", :notice => "List of exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @users = User.find(params[:id])

    @users.destroy

    redirect_to "/users", :notice => "User deleted."
  end

end

