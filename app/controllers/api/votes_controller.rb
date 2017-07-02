class Api::VotesController < ApplicationController

  def create
    @vote = current_user.votes.new(vote_params)
    if @vote.save
      render :show
    else
      render json: @vote.errors.full_messages, status: 422
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value, :votable_id, :votable_type)
  end
end
