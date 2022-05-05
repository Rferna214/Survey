class SurveyQuestionsController < ApplicationController


	def index
		@surveys = Survey1.all
		@questions = Question.all
		return @surveys, @questions
	end

def responses
		@responses = SurveyQuestion.find_by(question_id: params[:question_id]).responses
		@questions = SurveyQuestion.find_by(question_id: params[:question_id])
		
	end

	def respond
		@survey_question = SurveyQuestion.find_by(question_id: params[:question_id])
	end

def create
		survey_question = SurveyQuestion.new(survey_question1_params)
		if survey_question.save
			redirect_to "/surveys"
		else
			flash[:errors] = survey_question.errors.full_messages
			redirect_to "/survey_questions/index"
		end
	end


	def update
		survey_question = SurveyQuestion.find(params[:id])
		if survey_question.update(survey_question_params)
			redirect_to "/surveys"
		else
			flash[:errors] = survey_question.errors.full_messages
			redirect_to "/survey_questions/#{question.id}"
		end
	end


	

	private
	def survey_question_params
		params.require(:survey_questions).permit(:responses, :survey1_id, :question_id)
	end

	def survey_question1_params
		params.require(:survey_questions).permit(:survey1_id, :question_id)
	end


end

