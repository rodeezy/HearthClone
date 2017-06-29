class CardPostsController < ApplicationController

  def new
    @post = CardPost.new
    render :new
  end

  def create
    @post = CardPost.new(post_params)
    if @post.save
      render :show
    else
      render json: @post.errors.full_messages, status: 422
  end

  def index
    @posts = CardPost.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  private

  def post_params
    params.require(:post).permit(:description, :attack,
    :defense, :cost, :powerup, :card_type, :name)
  end
end
