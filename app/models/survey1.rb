class Survey1 < ApplicationRecord
	has_many :survey_questions, dependent: :destroy
	has_many :questions, through: :survey_questions
	validates :survey_name, presence: true
end
