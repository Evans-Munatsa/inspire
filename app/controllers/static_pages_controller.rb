class StaticPagesController < ApplicationController
  def home
  	@posts = Post.all.order('created_at DESC')
  end

  def about
  end

  def contact
  end
end
