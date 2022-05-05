class Respondentsurvey < ApplicationRecord
	belongs_to :respondent
	belongs_to :survey

	validates :respondent_id, :survey_id, presence: true
end

