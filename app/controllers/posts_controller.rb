class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to '/pages/:page_id'
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
    redirect_to '/pages/:page_id'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/pages/:page_id'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end