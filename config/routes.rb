Rails.application.routes.draw do
  resources :theme_interests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'api#index'
end
