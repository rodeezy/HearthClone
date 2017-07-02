class Api::DecksController < ApplicationController
  before_action :require_logged_in
  before_action :require_user_owns_deck!, only: [:update, :show]

  def create
    @deck = current_user.decks.new(deck_params)
    if @deck.save
      render :show
    else
      render json: @deck.errors.full_messages, status: 422
    end
  end

  def show
    @deck = Deck.find(params[:id])
    render :show
  end

  def update
    @deck = Deck.find(params[:id])
    if @deck.update(deck_params)
      render :show
    else
      render json: @deck.errors.full_messages, status: 422 #probably
    end
  end

  private

  def deck_params
    params.require(:deck).permit(:owner_id, :hero_class, :name)
  end

  def require_user_owns_deck!
    return if current_user.decks.find(params[:id])
    render json: "forbidden", status: :forbidden
  end
end
