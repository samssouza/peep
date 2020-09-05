class UsersController < ApplicationController
  
  #skip_before_action :authorized, only: [:new, :create]
  def index

    if params[:commit] == "Search"
      @user_search = User.where("name ILIKE ?", "%#{params[:orders]}%")
    else
      @user_search = User.all
    end

    @user = current_user

  end

  def new
  	@user = User.new
  end

  def create
    if User.find_by(username: params[:username])
      render plain: "User Already Exits!!"

    else
      @user = User.create(user_params)
      @user.save
      render plain: @user.inspect

    end
  end
  

  private
    def user_params
      params.require(:user).permit(:name, :username, :password,:about)
    end

end
