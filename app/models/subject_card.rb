class SubjectCard < ActiveRecord::Base
  belongs_to :subject
  belongs_to :card
end
