Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'
  get '/profile', to: 'profiles#profile'
  get '/upvote', to: "articles#upvote"


  resources :articles do
    resources :reviews, only: [ :index, :new, :create ]
  end


  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
