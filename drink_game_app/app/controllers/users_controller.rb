class UsersController < ApplicationController
  def index
    @saved_answer = User.find(1)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to("/")
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
        :name,
        :age,
        :gender,
        :picture_url,
        :email,
        :password,
        :password_confirmation
      )
  end

end
