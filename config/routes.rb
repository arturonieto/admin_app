Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index', as: :index
  post '/login' => 'sessions#create', as: :session_create
  get '/show' => 'sessions#show'
  delete '/logout' => 'sessions#destroy'

  get 'show/:id/index' => 'users#index', as: :edit_user
  post 'show/:id/index' => 'users#edit', as: :user
  post 'show/new' => 'users#create', as: :users
  get 'show/new' => 'users#new'
  get 'show/show' => 'users#show'



  get 'show/:id' => 'employees#show', as: :employee
  get '/view' => 'employees#view', as: :view

  resources :employees do
    collection do
      post :mark_checkin
      post :mark_checkout
    end
  end

end
