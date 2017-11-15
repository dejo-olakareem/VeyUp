class Question < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  #for cropping
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end

  validates :text, presence: true
  validate :picture_size

  belongs_to :survey
  has_many :answers
  has_many :votes, through: :answers

  # Validates the size of an uploaded picture.
  def picture_size
    if avatar.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
