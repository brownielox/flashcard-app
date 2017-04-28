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
    @card = Card.new
    @card.front = params[:front]
    @card.back = params[:back]
    @card.subject_id = params[:subject_id]
    @card.save
    redirect_to cards_new_path
  end

end
