Rails.application.routes.draw do
  get '/', to: 'application#landing'
  resources :submissions
  resources :authors
  # Reviews have custom routes
  get '/submissions/:id', to: 'reviews#new'
  post '/submissions/:id', to: 'reviews#create'
end
