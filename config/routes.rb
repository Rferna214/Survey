Rails.application.routes.draw do
  get "respondent" => "respondent#index"
  get "respondent/new" => "respondent#new"
  post "respondent" => "respondent#create"
  get "respondent/:id" => "respondent#show"
  get "respondent/:id/edit" => "respondent#edit"
  post "respondent/:id" => "respondent#update"
  get "respondent/:id/delete" => "respondent#delete"
  delete "respondent/:id" => "respondent#destroy"
end
