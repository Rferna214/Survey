class CreateRespondentQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :respondent_questions do |t|
      t.references :respondent, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
