class QuestionsController < ApplicationController
	# index methods gets called when the surveys URL is requested.
	# index methods gets mapped to the surveys index.html.erb

	def index
		@questions = Question.all
	end

	def new
	end

	def create
		question = Question.new(question_params)
		if question.save
			redirect_to "/questions"
		else
			flash[:errors] = question.errors.full_messages
			redirect_to "/questions/new"
		end
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		question = Question.find(params[:id])
		if question.update(question_params)
			redirect_to "/questions"
		else
			flash[:errors] = question.errors.full_messages
			redirect_to "/questions/#{question.id}/edit"
		end
	end

	def delete
		@question = Question.find(params[:id])
	end

	def destroy
		question = Question.find(params[:id])
		question.destroy
		redirect_to "/questions"
	end

private
	def question_params
		params.require(:question).permit(:question_text)
	end

end

