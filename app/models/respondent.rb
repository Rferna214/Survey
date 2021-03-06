class Respondent < ApplicationRecord

	has_many :respondent_questions, dependent: :destroy
	has_many :questions, through: :respondent_questions

	has_many :respondent_survey1s, dependent: :destroy
	has_many :surveys, through: :respondent_survey1s


	validates :first_name, :last_name, :email, presence: true
end
