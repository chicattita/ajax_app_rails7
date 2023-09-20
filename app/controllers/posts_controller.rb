class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end

  private
  def article_params
    params.require(:article).permit(:text)
  end
end
