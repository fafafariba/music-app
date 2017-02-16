class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      render json: "Welcome, #{@user.name}!"
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
