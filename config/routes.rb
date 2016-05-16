Rails.application.routes.draw do
  devise_for :users
  root 'days#index'
  resources :days, only: [:index, :show, :destroy]
  resources :trip_plans, except: :index do
    resource :place, except: [:index, :show]
  end
  resources :pin_notes, except: [:index, :show]
end
