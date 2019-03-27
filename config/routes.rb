Rails.application.routes.draw do
  get '/', to: 'application#landing'
  resources :submissions
  resources :authors
  # Reviews have custom routes
  get '/submissions/:id', to: 'reviews#new'
  post '/submissions/:id', to: 'reviews#create'

  get "/sessions/new", to: "sessions#new", as: "login" #login_path
  delete "/sessions", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  
end
