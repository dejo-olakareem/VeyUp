class User < ApplicationRecord
  has_secure_password
  has_many :surveys
  has_many :questions, through: :surveys
end
