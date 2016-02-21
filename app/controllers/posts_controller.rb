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
    @post = Post.find(params[:id])
  end

  def update
    bindung.pry
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
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