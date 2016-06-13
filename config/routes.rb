Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'
  resources :trips, except: :show do
    resources :events, except: :index
  end
  resources :notes, except: [:index, :show]
end
