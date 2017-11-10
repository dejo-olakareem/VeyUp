class User < ApplicationRecord
  has_secure_password
  has_many :surveys
  has_many :questions, through: :surveys
  has_many :answers, through: :questions
  has_many :reservations
  has_many :businesses, through: :reservations
  has_many :votes
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
end
