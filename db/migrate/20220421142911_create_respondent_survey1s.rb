class CreateRespondentSurvey1s < ActiveRecord::Migration[7.0]
  def change
    create_table :respondent_survey1s do |t|
      t.references :respondent, null: false, foreign_key: true
      t.references :survey1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
