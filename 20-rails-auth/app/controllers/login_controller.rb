class LoginController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to :root
    else
      flash[:notice] = "Not a valid login. Bye."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
