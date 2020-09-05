class HomeController < ApplicationController
  
  #skip_before_action :authorized, only: [:new, :create, :welcome]

  def index
  	@user = User.new
  end

  def login

    #refactor params into a method...
    # add checks to see if user is already logged in
    # in which case it should be redirected to posts pages
    # implement log out page
    #
    @user = User.find_by(username: params[:user][:username])

    if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_posts_path(@user)
    else

      render plain: "can't authenticate"

    end

  end


end
