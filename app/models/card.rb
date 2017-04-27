class Card < ActiveRecord::Base
  has_many :subject_cards
  belongs_to :subject
end
