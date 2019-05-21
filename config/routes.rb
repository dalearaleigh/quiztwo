Rails.application.routes.draw do
  root 'listings#index'
  resources :listings, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
