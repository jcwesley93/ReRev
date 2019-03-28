Rails.application.routes.draw do

  get '/', to: 'application#landing'
  resources :submissions
  resources :authors
  resources :reviews, except: [:index]
  resources :genres, only: [:index, :show]
  # Reviews have custom routes
  get '/submissions/:id', to: 'reviews#new'
  post '/submissions/:id', to: 'reviews#create'
  # Logging in
  get "/sessions/new", to: "sessions#new", as: "login"
  delete "/sessions", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
end
