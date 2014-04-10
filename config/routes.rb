ResumeKaizen::Application.routes.draw do

  devise_for :users

  resources :resumes
  resources :reviewer_resumes, controller: :reviewer_resumes
  resources :submitter_resumes, controller: :submitter_resumes

  root to: 'welcome#index'
  match "about" => 'welcome#about', via: :get
  match "reviewers" => 'welcome#reviewers', via: :get

end
