class Answer < ApplicationRecord

  mount_uploader :picture, PictureUploader
  validate  :picture_size

  belongs_to :question
  has_many :votes

  def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
