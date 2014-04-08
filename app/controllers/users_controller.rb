class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User #{@user.name} created."
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    if @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
      redirect_to users_path
    else
      render 'users'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end

