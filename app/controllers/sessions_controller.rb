class SessionsController < ApplicationController

  def new
  end

  def create
    user = login(params[:email], params[:password], params[:remember])
    if user
      redirect_back_or_to root_path, notice: "Successfully logged in"
    else
      flash.now[:notice] = "Invalid email/password combination"
      render :new, status: :see_other
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "Logged out"
  end

end
