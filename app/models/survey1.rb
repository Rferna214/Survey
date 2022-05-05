class Survey1 < ApplicationRecord
	# validates method specifies that an actor is valid only if
	# a survey name is present
	has_many :respondent_survey1s, dependent: :destroy
	has_many :respondents, through: :respondent_survey1s
	validates :survey_name, presence: true
end
