class Question < ApplicationRecord

  mount_uploader :avatar, AvatarUploader
  validates :text, presence: true
  validate :picture_size

  belongs_to :survey
  has_many :answers

  # Validates the size of an uploaded picture.
    def picture_size
      if avatar.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
