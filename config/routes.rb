Rails.application.routes.draw do
  get 'users/show'
  get 'home/index'
  devise_for :users
  # devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  resources :project_bugs
  resources :projects
  root to: "home#index"
  post 'assign_bug/:bug_id', to: 'project_bugs#assign_bug', as: :assign_bug

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
