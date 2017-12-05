Rails.application.routes.draw do
  get 'dogs/index'

  get 'dogs/new'

  get 'users/profile'

  devise_for :registrations, :controllers => { registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# devise_for :users,
  # controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
