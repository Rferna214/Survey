class RespondentSurvey < ApplicationRecord
  belongs_to :respondent
  belongs_to :survey
  
end
