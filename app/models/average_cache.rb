class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Business"
  belongs_to :rateable, :polymorphic => true
end
