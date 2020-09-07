class CommentsController < ApplicationController
  def new
  end
  def create

    @post = Post.find(comment_params[:post_id])
    if comment_params[:body]
      @post.comments.create(comment_params)

    else
      flash.now[:alert] = 'Comment Body Cannot be Empty!'
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end

end
