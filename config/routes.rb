Rails.application.routes.draw do

  resources :hotspots

  root 'epicenter#index'

  get '/auth/:provider/callback' => 'sessions#create'

  get '/signout' => 'session#destroy', as: :signout

  get 'check_this' => 'epicenter#about'

  resources :categories
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
