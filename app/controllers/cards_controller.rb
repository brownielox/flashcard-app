class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def show
    @card = Card.find_by_id(params[:id])
  end

  def create
    Card.create(post_params)
  end

  private

  def post_params
    params.require(:card).permit(:subject_name, :front, :back)
  end

end
