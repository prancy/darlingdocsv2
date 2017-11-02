Rails.application.routes.draw do

  root to: 'welcome#index'
  

  resources :students do
    resources :reports, shallow: true
  end

  resources :users, only: [:new, :create, :index]
  resources :teachers

  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

end
