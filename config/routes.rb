Rails.application.routes.draw do
  resources :users
  root to: "home#index"
  resources :clubs do
    resources :events do
      resources :series do
        resources :matches, only: [:edit, :update]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
