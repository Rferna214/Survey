class Respondent < ApplicationRecord
	has_many :respondent_questions, dependent: :destroy
	has_many :questions, through: :respondent_questions
	validates :first_name, :last_name, :email, presence: true
end
