Rails.application.routes.draw do
  root 'welcome#home'
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create, :index]
end
