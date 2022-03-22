class SurveysController < ApplicationController

def index
		@surveys = Survey.all
	end

def new
	end

	def create 		
		survey = Survey.new(survey_params)
		if survey.save
			redirect_to "/survey"
		else
			flash[:errors] = survey.errors.full_messages
			redirect_to "/surveys/new"
		end
	end
end
