Rails.application.routes.draw do
  resources :guestepisodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
end
