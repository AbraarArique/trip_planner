Rails.application.routes.draw do
  root 'days#index'
  resources :days, only: [:index, :show, :destroy]
  resources :trip_plans, except: :index do
    resource :place, except: [:index, :show]
  end
end