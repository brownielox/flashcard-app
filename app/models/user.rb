class User < ActiveRecord::Base
  has_many :subjects
  has_many :cards, through: :subjects

  has_secure_password
end
