Rails.application.routes.draw do
  resources :subjects
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'static#about'
  get '/new', to: 'subjects#new'
end




# REFERENCE
# root 'application#home'
#
# get '/signin', to: 'sessions#new'
# post '/signin', to: 'sessions#create'
# delete '/logout', to: 'sessions#destroy'
# post '/rides/new', to: 'rides#new'
