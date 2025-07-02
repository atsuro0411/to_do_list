class PostsController < ApplicationController
   def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post=Post.new(post_params)

    @post.save
    redirect_to("/posts/new")
  end

  def post_params
    params.require(:post).permit(:content, :id)
  end
end
