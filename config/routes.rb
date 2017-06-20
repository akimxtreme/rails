Rails.application.routes.draw do
  resources :users
  resources :genders
  resources :theme_interests
  # resources :api

  get 'api/index'
  get 'api/gender'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'api#index'
end
