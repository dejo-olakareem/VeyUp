class AddAvatarToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :avatar, :string
  end
end
