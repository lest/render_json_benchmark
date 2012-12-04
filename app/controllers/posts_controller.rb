class PostsController < ApplicationController
  def index
    @posts = Post.includes(:author).includes(comments: :author).order(:id)
    render json: @posts
  end
end
