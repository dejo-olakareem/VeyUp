class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions, inverse_of: :survey

  accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes[:text].blank? }
end
