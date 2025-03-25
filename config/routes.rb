Rails.application.routes.draw do
  resources :novelties
  resources :books
  resources :users
  
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
