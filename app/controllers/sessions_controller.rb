class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    email, password = session_params.values
    @user = User.find_by_credientials(email, password)

    if @user
      login(@user)
      redirect_to user_url(current_user)
      # render "users/show"
    else
      flash[:error] = "Invalid username/password."
      redirect_to new_session_url
    end
  end

  def destroy
    current_user.reset_session_token!
    logout
    redirect_to new_session_url
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
