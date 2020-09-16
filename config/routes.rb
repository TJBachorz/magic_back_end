Rails.application.routes.draw do
  resources :likes, only: [:index]
  resources :magic_cards, only: [:index]
  resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
