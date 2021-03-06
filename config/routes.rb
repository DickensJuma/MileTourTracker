Rails.application.routes.draw do

  root 'fleets#index'
  resources :fleets, only: [:index, :create] do
    resources :mileages, only: [:create]
  end

  devise_for :users

  resources :users, only: [:index, :show]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
