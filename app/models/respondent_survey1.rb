class RespondentSurvey1 < ApplicationRecord
  belongs_to :respondent
  belongs_to :survey1
  validates :respondent_id, :survey1_id, presence: true
end
