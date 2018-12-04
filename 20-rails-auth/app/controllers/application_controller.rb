class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def authorize!
    unless current_user
      flash[:notice] = "You need to be logged in to do that."
      redirect_to :root
    end
  end
end
