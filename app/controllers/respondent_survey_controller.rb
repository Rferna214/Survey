class RespondentSurveyController < ApplicationController
	def index
		@respondent = Respondent.all
		@surveys = Survey1.all
		return @respondent, @surveys
	end

def create
	respondent_survey = RespondentSurvey1.new(respondent_survey_params)
	if respondent_survey.save
		redirect_to "/surveys"
	else
		flash[:errors] = respondent_survey.errors.full_messages
		redirect_to "/respondent_survey"
end
end

def show
		@respondent = Survey1.find(params[:id]).respondents
		
	end

private
def respondent_survey_params
	params.require(:respondent_survey).permit(:respondent_id, :survey1_id)
end
end
