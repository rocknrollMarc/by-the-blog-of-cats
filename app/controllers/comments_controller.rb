class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to '/pages'
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to '/pages'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.update
    redirect_to '/pages'
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end