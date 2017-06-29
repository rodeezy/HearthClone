class Api::CardsController < ApplicationController
  # def show
  #   @card = Card.find(params[:id])
  #   render :show
  # end
  # i actually might not even need this cuz i dont think i wanna have a page for it
  #maybe an index tho. that would actually prob be good

  def index
    @cards = Card.all
    render :index
  end

end
