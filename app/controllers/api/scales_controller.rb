class Api::ScalesController < ApplicationController

  def create
    @scale = current_user.new(scale_params)
    if @scale.save
      render :show
    else
      render json: @scale.errors.full_messages, status: 422
    end
  end

  private

  def scale_params
    params.require(:scale).permit(:value, :votable_id, :votable_type)
  end
end
