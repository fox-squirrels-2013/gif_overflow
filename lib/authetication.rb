module Authetication
  def login user
    session[:current_user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
  end

  def is_user?
    current_user.id == params[:id].to_i
  end
end
