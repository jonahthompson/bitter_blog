class PostsController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]
  def index
    @comment = current_user.comments.new
    @posts = current_user.posts.all.reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to current_user
    else
      redirect_to new_post_path
    end 
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    respond_to do |format|
      Post.find(params[:id]).destroy
      format.js
      format.html {redirect_to new_session_path}
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
