class PostsController < ApplicationController
  def index
    @posts = Post.where(is_completed: false).order(:due_date).group_by { |post| post.due_date.to_date }
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    Post.create(post_params)

    redirect_to posts_path
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def completed_index
    @posts = Post.where(is_completed: true)
  end

  def mark
    post = Post.find(params[:id])
    post.update(is_completed: !post.is_completed)
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:content, :due_date, :id)
  end
end
