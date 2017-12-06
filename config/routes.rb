Rails.application.routes.draw do

  devise_for :registrations, :controllers => { registrations: "registrations"}

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [ :update, :destroy, :edit ]
  resources :dogs, only: [ :new, :create, :destroy, :update, :index ] do
    member do
    resources :bookings, only: [ :create ]
    end
  end
  resources :bookings, only: [ :edit ] do
    member do
    patch 'accept'
    patch 'cancel'
    patch 'decline'
    end
  end

  get 'users/profile', to: 'users#profile', as: 'profile'

  mount Attachinary::Engine => "/attachinary"
end

# devise_for :users,
  # controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
