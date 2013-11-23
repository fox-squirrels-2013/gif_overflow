class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:current_user_id] = @user.id
      redirect_to gifs_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      #render flash error on page
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to login_path, :notice => "Logged out!"
  end

 end
