class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      p 'Authenticated! '*10
      p session[:current_user_id] = @user.id
      redirect_to gifs_path, :notice => "Logged in!"
    else
       flash.now.alert = "Invalid email or password"
       render 'new'
    end
  end

   def destroy
    reset_session
    redirect_to login_path, :notice => "Logged out!"
   end

 end