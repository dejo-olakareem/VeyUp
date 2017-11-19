class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :question_id
      t.string  :text
      t.timestamps
    end
  end
end
