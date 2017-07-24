class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def edit
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:notice] = "Post Created"
      redirect_to @post
    else
      flash[:danger] = "Post not Created"
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post Updates"
      redirect_to @post
    else
      flash[:notice] = "Post was not updated."
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end
