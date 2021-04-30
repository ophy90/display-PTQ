Rails.application.routes.draw do
  resources :users
  root to: "home#index"
  resources :matches
  resources :clubs
  resources :series
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
