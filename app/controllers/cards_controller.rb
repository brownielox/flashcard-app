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
    @card.subject = params[:subject]
    @card.front = params[:front]
    @card.back = params[:back]
    if @card.save
      redirect_to new_path
    else
      puts "hello world"
    end
  end

end
