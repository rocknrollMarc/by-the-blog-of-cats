class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    @user = current_user
    userpage = Userpages.new
    userpage.user_id = @user.id
    userpage.page_id = @page.id
    userpage.role = "admin"
    userpage.save
    redirect_to page_path(id: @page.id)
  end

  def show
    @page = Page.find(params[:id])
    @posts = Post.where(page_id: @page.id)
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update(page_params)
    redirect_to page_path(id: @page.id)
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to '/pages'
  end

  private

  def page_params
    params.require(:page).permit(:title, :summary, :theme)
  end

end