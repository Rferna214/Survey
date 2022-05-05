Rails.application.routes.draw do

  
  get "surveys" => "surveys#index"
  get "surveys/new" => "surveys#new"
  post "surveys" => "surveys#create"
  get "surveys/:id/edit" => "surveys#edit"
  post "surveys/:id" => "surveys#update"
  get "surveys/:id/delete" => "surveys#delete"
  delete "surveys/:id" => "surveys#destroy"

  get "questions" => "questions#index"
  get "questions/new" => "questions#new"
  post "questions" => "questions#create"
  get "questions/:id/edit" => "questions#edit"
  post "questions/:id" => "questions#update"
  get "questions/:id/delete" => "questions#delete"
  delete "questions/:id" => "questions#destroy"


  get "respondent" => "respondent#index"
  get "respondent/new" => "respondent#new"
  post "respondent" => "respondent#create"
  get "respondent/:id" => "respondent#show"
  get "respondent/:id/edit" => "respondent#edit"
  post "respondent/:id" => "respondent#update"
  get "respondent/:id/delete" => "respondent#delete"
  delete "respondent/:id" => "respondent#destroy"

  get "respondent_survey" => "respondent_survey#index"
  post "respondent_survey" => "respondent_survey#create"
  get "respondent_survey/:id" => "respondent_survey#show"

end
