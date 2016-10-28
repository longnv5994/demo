Rails.application.routes.draw do
  root "users#index"
  devise_for :users
  resources :users, only: [:index, :show]
  resources :chat_rooms
  mount ActionCable.server => '/cable'
end
