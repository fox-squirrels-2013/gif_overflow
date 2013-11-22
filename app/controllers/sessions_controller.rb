class SessionsController < ApplicationController
  def new
    p '*'*100
    p session[:current_user_id]
  end

   def create
     @user = User.find_by_username(params[:session][:username])
     if @user && @user.authenticate(params[:session][:password])
       session[:current_user_id] = @user.id
       redirect_to new_question_path, :notice => "Logged in!"
     else
       flash.now.alert = "Invalid email or password"
       render 'new'
     end
   end

   def destroy
    reset_session
    p '*'*100
    p session[:current_user_id]
    redirect_to login_path, :notice => "Logged out!"
   end
 end
