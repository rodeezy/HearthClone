class Api::CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
    render :show
  end

end
