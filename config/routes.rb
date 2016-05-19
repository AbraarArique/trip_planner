Rails.application.routes.draw do
  devise_for :users
  get 'users/password_reset', to: 'trips#password_reset', as: 'password_reset'
  post 'users/recover', to: 'trips#recover', as: 'recover'
  root 'trips#index'
  resources :trips do
    resources :events, except: :index
  end
  resources :pin_notes, except: [:index, :show]
end
