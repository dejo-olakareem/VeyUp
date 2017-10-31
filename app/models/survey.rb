class Survey < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :questions
end
