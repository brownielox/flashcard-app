class CardsController < ApplicationController

  def index
    @card = Card.all
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
    @card.save
    redirect_to subjects_path
  end

end
