class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order('created_at DESC')
    @user_post = current_user.posts.build
  end

  def edit
  	@user = "Edit user"
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  
end
