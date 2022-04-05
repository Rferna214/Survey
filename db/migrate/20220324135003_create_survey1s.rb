class CreateSurvey1s < ActiveRecord::Migration[7.0]
  def change
    create_table :survey1s do |t|
      t.string :survey_name

      t.timestamps
    end
  end
end
