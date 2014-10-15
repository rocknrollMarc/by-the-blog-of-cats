class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to '/pages/:page_id'
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update(page_params)
    redirect_to '/pages/:page_id'
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to '/users/:user_id'
  end

  private

  def page_params
    params.permit(:page).require(:theme)
  end

end