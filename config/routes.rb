ResumeKaizen::Application.routes.draw do

  resources :submitter_resumes

  resources :reviewer_resumes

  devise_for :users

  resources :reviewers, controller: :users
  resources :submitters, controller: :submitters

  resources :resumes
  resources :reviewer_resumes, controller: :reviewer_resumes
  resources :submitter_resumes, controller: :submitter_resumes

  root to: 'welcome#index'
  match "about" => 'welcome#about', via: :get
  match "reviewers" => 'welcome#reviewers', via: :get

end
