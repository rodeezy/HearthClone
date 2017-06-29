class Api::ImagePostsController < ApplicationController

  def new
    @image_post = ImagePost.new(post_id: params[:card_post_id])
    # card_post_id or post_id
    render :new
  end

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
