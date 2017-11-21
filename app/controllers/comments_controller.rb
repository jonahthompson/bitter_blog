class CommentsController < ApplicationController
  before_action :authenticate, only: [:edit, :update, :destroy]
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to home_index_path
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to home_index_path
  end

  def destroy
    respond_to do |format|
      Comment.find(params[:id]).destroy
      format.js
      format.html {redirect_to home_index_path}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
