Rails.application.routes.draw do
  resources :episode_guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes 
end
