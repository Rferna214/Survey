class RespondentQuestion < ApplicationRecord
  belongs_to :respondent
  belongs_to :question

  validates :respondent_id, :question_id, presence: true
end
