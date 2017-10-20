class User < ApplicationRecord


  has_secure_password
  has_many :surveys
  has_many :questions, through: :surveys
  has_many :answers, through: :questions

end
