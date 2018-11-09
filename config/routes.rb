Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:show, :index]
  resources :episodes, only: [:new, :show, :index]
  resources :appearances
end
