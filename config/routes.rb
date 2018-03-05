Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  resources :teachers, only: [:index, :show]
  resources :students, only: [:index, :show]

  resources :pledges, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "static#home"


end
