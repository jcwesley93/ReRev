Rails.application.routes.draw do
  resources :submissions
  resources :authors

  #FOR REVIEWS, CREATE CUSTOM ROUTES
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
