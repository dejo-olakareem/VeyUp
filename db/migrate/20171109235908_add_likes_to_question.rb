class AddLikesToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :likes, :integer
  end
end
