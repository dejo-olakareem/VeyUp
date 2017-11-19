class UsersController < ApplicationController
  def index
    @users =  User.all
    #User.where.not(id: current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.image == nil
      @user.image = "/assets/avatar_image.png"
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @user.questions = @user.questions.order("created_at").last(3)
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :password, :password_confirmation,:image,:name)
  end
end
