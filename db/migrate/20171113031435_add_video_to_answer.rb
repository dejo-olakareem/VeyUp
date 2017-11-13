class AddVideoToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :video, :string
  end
end
