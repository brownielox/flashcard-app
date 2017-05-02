class CardsController < ApplicationController
  before_action :require_login

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
    redirect_to cards_new_path
  end

  private

  def post_params
    params.require(:card).permit(:subject_name, :front, :back)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
