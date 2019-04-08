Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'characters#index'
  
  resources :characters, only: [:index, :show]
  resources :player_pools
  resources :sessions, only: [:new, :create, :destroy]
end
