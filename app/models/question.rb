class Question < ApplicationRecord
	validates :question_text, presence: true
end
