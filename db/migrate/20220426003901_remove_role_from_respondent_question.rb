class RemoveRoleFromRespondentQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :respondent_questions, :role, :string
  end
end
