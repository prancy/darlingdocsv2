Rails.application.routes.draw do
  
  root to: 'welcome#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

  # student routes
  get '/students', to: 'students#index'

end
