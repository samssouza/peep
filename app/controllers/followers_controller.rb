class FollowersController < ApplicationController

  def create

    @user = current_user
    @user.followers.create(follower_params)
    render plain: @user.followers.inspect

  end

  def index
    #Repeated Code prone to reafactoring

    @friends = Friendships.find_by_user_id(params[:user_id])

    if @friends
      render plain: @friends.inspect
    else
      render plain: "Sorry you have no friends"
    end

  end

  private
  def follower_params
    params.require(:follower).permit(:followed_user_id)
  end

end
