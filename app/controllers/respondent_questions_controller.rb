class RespondentQuestionsController < ApplicationController
	def index
		@respondents = Respondent.all
		@questions = Question.all
		return @respondents, @questions
	end
	def new
	end
	def create
		respondent_question = RespondentQuestion.new(respondent_question_params)
		
		if respondent_question.save
			redirect_to "/respondent"
		else
			flash[:errors] = respondent_question.errors.full_messages
			redirect_to "/respondent_questions/index"
		end
	end
	private
	def respondent_question_params
		params.require(:respondent_question).permit(:respondent_id, :question_id, :responses)
	end
end
