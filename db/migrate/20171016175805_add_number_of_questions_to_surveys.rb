class AddNumberOfQuestionsToSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :number_of_questions, :integer
  end
end
