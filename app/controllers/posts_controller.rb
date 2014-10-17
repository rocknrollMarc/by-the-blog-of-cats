class PostsController < ApplicationController

  def new
    @post = Post.new
    @page = Page.find(params[:page_id])
  end

  def create
    @post = Post.new(post_params)
    @page = Page.find_by(id: params[:page_id])
    @user = current_user
    @post.user_id = @user.id
    @post.page_id = @page.id
    @post.save
    redirect_to "/pages/#{@page.id}"
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    @page = Page.find(@post.page_id)
    redirect_to "/pages/#{@page.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/pages/#{@page.id}"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end