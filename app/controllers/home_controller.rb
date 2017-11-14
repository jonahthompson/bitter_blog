class HomeController < ApplicationController
  def index
  	@posts = Post.all.reverse
  	if user_signed_in?
  		render 'home/index'
  	else
  		redirect_to new_session_path
  	end
  end
end
