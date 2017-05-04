class CardsController < ApplicationController
  before_action :require_login

  def index
    @cards = Card.all
  end

  def new
      @card = Card.new
  end

  def create
      @card = Card.new(card_params)
      if @card.save
          redirect_to cards_new_path
      else
          redirect_to subjects_path
      end
  end

  private

  def card_params
    params.require(:card).permit(:subject_name, :front, :back)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
