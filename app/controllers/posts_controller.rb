class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @all_post = @user.posts.clone

    @user.followers.each do |follower|
      @fl_user = User.find(follower.followed_user_id)
      @all_post = @all_post + @fl_user.posts.all
    end

    @all_post = @all_post.sort_by {|hash| hash[:created_at]}
    @logged_in_user = current_user
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_posts_path(@user)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
