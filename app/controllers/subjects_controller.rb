class SubjectsController < ApplicationController
  before_action :require_login

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new
    @subject.name = params[:name]
    @subject.save
    redirect_to cards_new_path
  end

  def show
    @subject = Subject.find_by(params[:id])
  end

  private

  def card_params
      params.require(:card).permit(:card)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
