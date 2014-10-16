class UsersController < ApplicationController

  def login
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to '/users/:user_id'
  end

  def show
    if User.find(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to '/login'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to '/users/:user_id'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_digest)
  end

end