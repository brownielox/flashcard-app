Rails.application.routes.draw do
  resources :users
  resources :subjects
  resources :cards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/about', to: 'static#about'
  post '/cards/new', to: 'cards#new'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/subjects/back', to: 'cards#back'
  get '/logout', to: 'sessions#destroy'
end
