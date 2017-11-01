Rails.application.routes.draw do
  
  root to: 'welcome#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :students do
    resources :reports
  end


  get '/login', to: 'sessions#new'

  # student routes
  # get '/students', to: 'students#index'
  # get '/students/new', to: 'students#new'
  # get '/students/:id', to: 'students#show', as: :student
  # get '/students/:id/edit', to: 'students#edit', as: :edit_student
  # get '/students/:id/report', to: 'reports#new', as: :new_report
  # post '/students', to: 'students#create'
  # put '/students/:id', to: 'students#update'
  # patch '/students/:id', to: 'students#update'
  # delete 'students/:id', to: 'students#destroy' 

end
