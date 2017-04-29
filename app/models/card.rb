class Card < ActiveRecord::Base
  belongs_to :subject

  attr_accessor :subject_name

  def subject_name=(name)
    self.subject = Subject.find_or_create_by(name: name)
  end
end
