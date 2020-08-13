Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  
  resources :heroinepower, only: [:index]
end
