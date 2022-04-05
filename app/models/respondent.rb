class Respondent < ApplicationRecord

	def index
		@respondent = Respondent.all
	end

	validates :first_name, :last_name, :email, presence: true
end
