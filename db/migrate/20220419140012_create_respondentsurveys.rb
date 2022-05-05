class CreateRespondentsurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :respondentsurveys do |t|

      t.timestamps
    end
  end
end
