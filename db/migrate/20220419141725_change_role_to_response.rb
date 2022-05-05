class ChangeRoleToResponse < ActiveRecord::Migration[7.0]
  def change
    rename_column :respondent_questions, :role, :response
    
  end
end
