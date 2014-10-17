class CommentsController < ApplicationController

  def index
    @comments = Comment.hash_tree

      # HASH TREE
      # {a =>
      #   {b =>
      #     {c1 =>
      #       {d1 => {}
      #     },
      #     c2 =>
      #       {d2 => {}}
      #     },
      #     b2 => {}
      #   }
      # }
  end

  def new
    @comment = Comment.new(parent_id: params[:parent_id])
  end

  def create

    if params[:comment][:parent_id].to_i > 0
      parent = Comment.find_by_id(params[:comment].delete(:parent_id))
      @comment = parent.children.build(comment_params)
    else
      @comment = Comment.new(comment_params)
    end

    if params[:post_id]
      Comment.create(
        content: comment_params[:content],
        commentable_type: "post",
        commentable_id: params[:post_id]
      )
    elsif params[:comment_id]
      Comment.create(
        content: comment_params[:content],
        commentable_type: "comment",
        commentable_id: params[:comment_id]
      )
    end
    redirect_to "/posts/#{params[:post_id]}"


    # if @comment.save
    #   flash[:success] = 'Your comment was successfully added!'
    #   redirect_to root_url
    # else
    #   render 'new'
    # end
  end
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
    params.require(:comment).permit(:content)
  end

end