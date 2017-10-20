class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.new(email: params[:email])
    p "* " * 50
    p params
    p "* " * 50
    if user.save! && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now.alert = 'Email or password is invalid'
      render :new
    end
  end

  def create_from_facebook
    # user = User.new(email: params[:email])
    # p "* " * 50
    # p params
    # p "* " * 50
    # if user.save! && user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to user_path(user)
    # else
      flash.now.alert = 'Email or password is invalid'
      render :new
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
