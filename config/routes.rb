Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'
  resources :trips do
    resources :events, except: :index
  end
  resources :pin_notes, except: [:index, :show]
end
