class Question < ApplicationRecord

	has_many :survey_questions, dependent: :destroy
	has_many :respondent_questions, dependent: :destroy
	has_many :surveys, through: :survey_questions
	has_many :respondent, through: :respondent_questions
	validates :question_text, presence: true
end
