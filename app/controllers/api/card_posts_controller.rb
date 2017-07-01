class Api::CardPostsController < ApplicationController
  before_action :require_logged_in!, except: [:show, :index]

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

  def downvote; vote(-1); end
  def upvote; vote(-1); end

  private

  def post_params
    params.require(:post).permit(:description, :attack,
    :defense, :cost, :powerup, :card_type, :name)
  end

  def vote(direction)
    @post = CardPost.find(params[:id])
    @vote = Vote.find_by(votable_id: @post.id,
    votable_type: "CardPost", user_id: current_user.id)

    if @vote
      #can cancel vote
      @vote.update(value: (direction == @vote.value ? 0 : direction))
      # if direction == @vote.value
      #   @vote.destroy
      # else
      #   @vote.update(value: direction)
      # end
    else
      @post.votes.create!(user_id: current_user.id, value: direction)
    end
      #redirect to self (take care of in frontend i think tho)
  end

  def scale(amount)
    @post = CardPost.find(params[:id])
    @scale = Scale.find_by(scalable_id: @post.id,
    scalable_type: "CardPost", user_id: current_user.id)

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
    scalable_type: "CardPost", user_id: current_user.id)
    @scale.destroy
  end
end
