class SurveyQuestion < ApplicationRecord
  
  belongs_to :survey1
  belongs_to :question

  validates :survey1_id, :question_id, presence: true
end
