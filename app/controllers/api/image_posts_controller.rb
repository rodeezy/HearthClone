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

  def upvote; vote(1); end
  def downvote; vote(-1); end

  private

  def image_post_params
    params.require(:image_post).permit(:image_url, :description, :post_id)
  end

  def vote(direction)
    @image_post = ImagePost.find(params[:id])
    @vote = Vote.find_by(votable_id: @image_post.id,
    votable_type: "ImagePost", user_id: current_user.id)

    if @vote
      #can cancel vote
      @vote.update(value: (direction == @vote.value ? 0 : direction))
    else
      @post.votes.create!(user_id: current_user.id, value: direction)
    end
      #redirect to self (take care of in frontend i think tho)
  end

  def scale(amount)
    @post = ImagePost.find(params[:id])
    @scale = Scale.find_by(scalable_id: @post.id,
    scalable_type: "ImagePost", user_id: current_user.id)

    #if they change their mind
    if @scale
      @scale.update(value: amount)
    else
      @post.scales.create!(user_id: current_user.id, value: amount)
    end
  end

  #if they didn't mean to click the scale (and if i can implement it)
  def cancel_scale
    @scale = Scale.find_by(scalable_id: @post.id,
    scalable_type: "ImagePost", user_id: current_user.id)
    @scale.destroy
  end

end
