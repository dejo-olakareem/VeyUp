class User < ApplicationRecord

  has_secure_password
  has_many :surveys
  has_many :questions, through: :surveys
  has_many :answers, through: :questions

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.email = auth["info"]["email"]
    end
  end

end
