Rails.application.routes.draw do
  resources :points
  resources :reviews
  resources :categories
  resources :salons
  resources :codes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
