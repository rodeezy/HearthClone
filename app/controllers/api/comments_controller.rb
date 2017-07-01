class CommentsController < ApplicationController
  before_action :require_logged_in

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(params[:comment[:body]])
      render :show
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def downvote; vote(-1); end
  def upvote; vote(-1); end

  private

  def vote(direction)
    @comment = Comment.find(params[:id])
    @vote = Vote.find_by(votable_id: @post.id,
    votable_type: "Comment", user_id: current_user.id)

    if @vote
      #can cancel vote
      @vote.update(value: (direction == @vote.value ? 0 : direction))
    else
      @post.votes.create!(user_id: current_user.id, value: direction)
    end
      #redirect to self (take care of in frontend i think tho)
  end

  # def comment_params
  #   params.require(:comment).permit(:body)
  # end
  #seems silly for just one
end
