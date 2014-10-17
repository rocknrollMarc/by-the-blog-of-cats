class UsersController < ApplicationController
  before_action :authenticate_user!

  def login
  end

  def new
    @user = User.new
  end

  # def create
  #   # @user = User.new(user_params)
  #   # @user.save
  #   redirect_to '/users/@user.id'
  # end

  def show
    if current_user
      @user = current_user
      userpages = Userpages.where(user_id: @user.id)
      @pages = []
      @posts = []
      userpages.each do |up|
        @pages << Page.find_by(id: up.page_id)
      end
      @pages.each do |p|
        @posts << Post.find_by(page_id: p.id)
      end
    else
      redirect_to '/users/sign_in'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:name, :image_url, :favorite_food, :favorite_litter)
  end

end