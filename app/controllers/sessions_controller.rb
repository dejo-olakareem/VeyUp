class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.save! && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now.alert = 'Email or password is invalid'
      render :new
    end
  end

  def create_from_facebook
    auth =  request.env["omniauth.auth"]
    p "e" * 99
    p auth
    p "r" * 99
    user = User.find_by(uid: auth["uid"])
    if !user
      user = User.create(provider: auth["provider"],uid: auth["uid"], password: auth["uid"], email: auth["info"]["email"], image:auth["info"]["image"], name: auth["info"]["name"])
    end
    session[:user_id] = user.id
    redirect_to user_path(user), :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
