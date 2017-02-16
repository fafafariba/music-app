class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credientials(session_params.email, session_params.password)

    if @user
      login(@user)
      render json: "Welcome, #{@user.name}!"
    else
      flash[:error] = "Invalid username/password."
      redirect_to new_session_url
    end
  end

  def destroy
    current_user
  end

  private

  def session_params
    params.requre(:user).permit(:email, :password)
  end

end
