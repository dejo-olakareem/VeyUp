class AddPictureToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :picture, :string
  end
end
