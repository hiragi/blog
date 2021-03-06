class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
#    render text: params[:post].inspect
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
#    @post = Post.all
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end

end
