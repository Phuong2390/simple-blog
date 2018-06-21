class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by username: params[:session][:username].downcase
    if @user && @user.passwordigest == (params[:session][:passwordigest])
      flash[:success] = "Login success"
      log_in @user
      redirect_to @user
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to login_path
  end
end
