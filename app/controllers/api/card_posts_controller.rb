class Api::CardPostsController < ApplicationController
  before_action :require_logged_in, except: [:show, :index]

  def create
    @post = current_user.card_posts.new(post_params)
    if @post.save
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def index
    @posts = CardPost.all
    render :index
  end

  def show
    @post = CardPost.find(params[:id])
    render :show
  end

  private

  def post_params
    params.require(:post).permit(:description, :attack,
    :defense, :cost, :powerup, :card_type, :name)
  end

end
