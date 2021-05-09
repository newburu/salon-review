Rails.application.routes.draw do
  resources :points
  resources :reviews
  resources :categories
  resources :salons
  resources :codes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # 静的ページ
  get 'static_pages/info'
  get 'static_pages/update'
  get 'static_pages/terms'
  get 'static_pages/privacy'
  
  root 'salons#index'

end
