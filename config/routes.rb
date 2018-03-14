Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users
  resources :teachers, only: [:index, :show] do
  resources :students, only: [:index, :show, :new, :create]
end
  resources :students, only: [:index, :show]
  resources :comments, only: [:new, :create]
  resources :pledges, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "static#home"
 get '/auth/facebook/callback' => 'sessions#create'

end
