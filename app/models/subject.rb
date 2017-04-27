class Subject < ActiveRecord::Base
  has_many :subject_cards
  has_many :cards, through: :subject_cards
end
