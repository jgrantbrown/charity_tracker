Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'
    # , registrations: 'users/registrations'
  }

  resources :users
  resources :teachers, only: [:index, :show, :edit, :update] do
    resources :students, only: [:index, :show, :new, :create]
  end

  resources :students do
    resources :pledges, only: [:new, :create, :show]

  end

  resources :students, only: [:index, :show, :edit, :update]
  resources :comments, only: [:new, :create]
  resources :pledges, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "static#home"

 get '/auth/facebook/callback' => 'sessions#create'

 get 'most_pledges', to: 'pledges#most_pledges'
end
