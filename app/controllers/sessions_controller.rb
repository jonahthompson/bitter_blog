class SessionsController < ApplicationController

	def new
		render 'sessions/new'
	end
	
  def create
  	@user = User.find_by(session_params)
  	if @user
  		session[:user_id] = @user.id
  		redirect_to @user
  	else
  		redirect_to new_session_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to new_session_path
  end

  private

  def session_params
  	params.require(:login).permit(:email, :password)
  end
end
