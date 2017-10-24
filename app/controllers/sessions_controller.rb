class SessionsController < ApplicationController
  def new
  end

  def create
    # auth =  request.env["omniauth.auth"]
    user = User.find(email: params[:email])
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
    user = User.find_or_create_by(provider: auth["provider"],uid: auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to user_path(user), :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
