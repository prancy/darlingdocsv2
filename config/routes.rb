Rails.application.routes.draw do

  root to: 'welcome#index'
  
  resources :teachers do
    resources :students do
      resources :reports
    end
  end

  resources :users do
    resources :students do
      resources :reports
    end
  end

  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

end
