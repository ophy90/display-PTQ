Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'pages#home'
  resources :clubs do
    resources :events do
      resources :series do
        resources :matches, only: [:edit, :update]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
