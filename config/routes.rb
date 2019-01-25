Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ingredients
      resources :cocktails, only: [:index, :create]
      # post '/login', to: 'login#login', as: 'login'
    end
  end
end
