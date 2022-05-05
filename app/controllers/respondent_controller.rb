class RespondentController < ApplicationController
	def index 

	@respondent = Respondent.all
end

def new
end

def create
	respondent = Respondent.new(respondent_params)
	if respondent.save
		redirect_to "/respondent"
	else
		flash[:errors] = respondent.errors.full_messages
		redirect_to "/respondent/new"
	end
end
def questions
		@questions = Respondent.find(params[:id]).questions
		@respondents = Respondent.find(params[:id])
	end

def show
	@respondent = Respondent.find(params[:id])
end

def edit
	@respondent = Respondent.find(params[:id])
end

def update
	respondent = Respondent.find(params[:id])

	if respondent.update(respondent_params)

		redirect_to "/respondent"

	else
		
		flash[:errors] = respondent.errors.full_messages
		redirect_to "/respondent/#{respondent.id}/edit"
end
end

def delete
	@respondent = Respondent.find(params[:id])
end

def destroy
	respondent = Respondent.find(params[:id])
	respondent.destroy
	redirect_to "/respondent"
end



private
def respondent_params
	params.require(:respondent).permit(:first_name, :last_name, :email)
end
end