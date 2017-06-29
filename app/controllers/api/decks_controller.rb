class DecksController < ApplicationController
  before_action :require_logged_in
  before_action :require_user_owns_deck!, only: [:edit, :update]

  def new
    @user =
    @deck = Deck.new(deck_params)
  end

  def create

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
