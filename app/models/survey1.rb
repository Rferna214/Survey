class Survey1 < ApplicationRecord
	# validates method specifies that an actor is valid only if
	# a survey name is present
	validates :survey_name, presence: true
end
