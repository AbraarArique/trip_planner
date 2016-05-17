Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'
  resources :trips, only: [:index, :show, :destroy]
  resources :events, except: :index
  resources :pin_notes, except: [:index, :show]
end
