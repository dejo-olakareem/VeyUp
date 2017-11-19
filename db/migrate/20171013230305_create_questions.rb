class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :text
      t.integer :user_id
      # t.references :survey, :foreign_key => true

      t.timestamps
    end
  end
end
