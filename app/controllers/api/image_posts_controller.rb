class Api::ImagePostsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    @image_post = current_user.image_posts.new(image_post_params)
    if @image_post.save
      render :show
    else
      render json: @image_post.errors.full_messages, status: 422
    end
  end

  def show
    @image_post = ImagePost.find(params[:id])
    render :show
  end

  private

  def image_post_params
    params.require(:image_post).permit(:image_url, :description, :post_id)
  end

end
