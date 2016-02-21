class PostsController < ApplicationController
  def index
    # @post = Posts.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
    @posts= Post.find(params[:id])
  end

  def update
  end

  def delete
  end

  private
  def post_params
      params.require(:post).permit(
        :title,
        :body,
        :category
      )
  end
end