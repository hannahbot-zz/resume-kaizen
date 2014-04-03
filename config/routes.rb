ResumeKaizen::Application.routes.draw do

  devise_for :users

  root to: 'welcome#index'
  match "about" => 'welcome#about', via: :get
  match "reviewers" => 'welcome#reviewers', via: :get

end
