class SurveysController < ApplicationController
	# index methods gets called when the surveys URL is requested.
	# index methods gets mapped to the surveys index.html.erb

	def index
		# call all method on Survey1 model class.
		# all method selects all of the data in the survey table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance varibale is available to surveys index.html.erb.
		@surveys = Survey1.all
	end

	#new method gets called when the surveys/new URL is requested.
	#new method is mapped to the surveys new.html.erb
	def new
	end

	# create method gets called when the Create button is pushed on
	# the surveys new.html.erb
	def create
		survey = Survey1.new(survey_params)
		# call save method on Survey object
		# save method inserts the data in the Survey model object
		# into the survey table
		if survey.save
			# if the save method succeeds, request the surveys URL
			# which will rendor the surveys index.html.erb in the browser
			redirect_to "/surveys"
		else
			# get full messages associated with errors
			# store them in a Rails flash object named errors so that
			# the full messages may be displayed in the surveys new.html.erb
			flash[:errors] = survey.errors.full_messages
			# if the save method fails, request the surveys URL
			# which will rendor the surveys new.html.erb in the browser
			redirect_to "/surveys/new"
		end
	end

	def show
		# call find method on Actor model class giving it the id sent
		# in the request
		# find method selects all of the data in the actor table where
		# the id is equal to the id sent in the request 
		# selected data will be returned in array of movie objects
		# store the array of movie objects in an instance variable
		# instance variable is available to actors show.html.erb
		@questions = Survey1.find(params[:id]).questions
		@survey = Survey1.find(params[:id])
		
	end

	def edit
		# call find method on Survey1 model class giving it the id sent
		# in the request
		# the find method selects all of the data in the survey table where
		# the id is equal to the id sent in the request
		# the selected data will be returned as an object
		# the object will be stored in a instance variable that will be
		# available to the edit.html.erb
		@survey = Survey1.find(params[:id])
	end

	#update method gets called when the Update button is pushed on the 
	# surveys edit.html.erb
	def update
		# call find method on Survey1 model class giving it the id sent in the 
		# request
		# find method selects all of the data in the survey table where
		# the id is equal to the id sent in the request
		# the selected data will be returned as an object
		# the object will be stored in a variable
		survey = Survey1.find(params[:id])
		# call update method on Survey object giving it the Survey name 
		# parameters input in the surveys edit.html.erb
		# update method updates the data in the survey table use the parameters
		if survey.update(survey_params)
			# if the update method succeeds, request the surveys URl which
			# will render the surveys infex.html.erb
			redirect_to "/surveys"
		else
			# if the update method fails, get the full messages associated
			# with the errors
			# store them in a Rails flash object named errors so that
			# the full messages may be displayed in the request URL
			flash[:errors] = survey.errors.full_messages
			# requested the surveys/:id/edit URL which will render the surveys
			# edit.html.erb
			redirect_to "/surveys/#{survey.id}/edit"
		end
	end

	# delete method gets called when the surveys/:id/delete URL is requested
	# delete method is mapped to the surveys delete.html.erb
	def delete
		# call find method on Survey1 model class giving it the id sent
		# in the request
		# the find method selects all of the data in the survey table where
		# the id is equal to the id sent in the request
		# the selected data will be returned as an object
		# the object will be stored in a instance variable that will be
		# available to the delete.html.erb
		@survey = Survey1.find(params[:id])
	end

	# destroy method gets called when the Delete button is pushed on the 
	# surveys delete.html.erb
	def destroy
		survey = Survey1.find(params[:id])
		survey.destroy
		redirect_to "/surveys"
	end

private
	def survey_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:survey).permit(:survey_name)
	end

end
