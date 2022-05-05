class AddResponsesToRespondentQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :respondent_questions, :responses, :string
  end
end
