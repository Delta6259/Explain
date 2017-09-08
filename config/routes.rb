Rails.application.routes.draw do
  root to: 'pages#home'
  get '/profile', to: 'profiles#profile'
  resources :articles
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
