class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def show
    @user = User.friendly.find(params[:slug])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Signed up!"
    else
      render :new, status: :see_other # for Turbo
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Profile updated"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = current_user
  end
end
