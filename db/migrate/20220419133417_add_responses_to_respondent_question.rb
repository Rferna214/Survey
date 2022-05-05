class AddResponsesToRespondentQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column :respondent_questions, :role, :string
  end
end
