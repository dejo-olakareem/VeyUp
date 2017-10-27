class RatingCache < ActiveRecord::Base[5.0]
  belongs_to :cacheable, :polymorphic => true
end
