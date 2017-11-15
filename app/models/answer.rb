class Answer < ApplicationRecord

  mount_uploader :picture, PictureUploader
  mount_uploader :video, VideoUploader
  validate  :picture_size

  belongs_to :question
  has_many :votes
  has_many :likes, through: :votes

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

end
