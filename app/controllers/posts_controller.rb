class PostsController < ApplicationController

  def index
      @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def post_params
    params.require(:post)
          .permit(:content, :title)
  end

end
