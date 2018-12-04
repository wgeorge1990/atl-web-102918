class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :root
    else
#      byebug
      flash[:error] = "We couldn't save your user."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
