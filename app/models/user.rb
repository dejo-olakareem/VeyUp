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
  has_many :following, through: :active_relationships, source: :followed

  # Follows a user.
  def follow(other_user)
    following << other_user
  end

  # Unfollows a user.
  def unfollow(other_user)
    following.delete(other_user)
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
end
