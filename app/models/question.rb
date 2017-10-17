class Question < ApplicationRecord
  validates :text, presence: true

  belongs_to :survey
  has_many :answers
end
