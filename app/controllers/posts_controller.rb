class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_url
    else
      render :edit
    end
  end

  def set_post
    @post = Post.find_by(id: params[:id])
   end

  private
  def post_params
    params.require(:post).permit(:title)
  end
  
end
