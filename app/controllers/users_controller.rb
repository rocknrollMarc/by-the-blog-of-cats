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
      @page_ids = []
      @posts = []
      userpages.each do |up|
        @pages << Page.find_by(id: up.page_id)
        @page_ids << up.page_id
      end
      @page_ids.each do |p_id|
        @posts << Post.where(page_id: p_id)
      end
      @posts.flatten!
      # @pages.each do |p|
      #   if Post.find_by(page_id: p.id)
      #     @posts << Post.find_by(page_id: p.id)
      #   end
      #   @page_ids << p.id
      # end
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
    params.require(:user).permit(:name, :image_url)
  end

end