Rails.application.routes.draw do
  root 'basic_models#index'
  resources :basic_models
    namespace :admin do
      resources :items
    end
end
