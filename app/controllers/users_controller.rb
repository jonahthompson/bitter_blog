class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]
  def index
    like_keyword = "%#{params[:name]}%"
    @users = User.where("name LIKE ?", like_keyword)
    render 'users/index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    respond_to do |format|
      @user = User.find(params[:id]).destroy
      session[:user_id] = nil
      format.js
      format.html {redirect_to new_session_path}
    end 
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
