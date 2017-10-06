Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/administrator', as: 'rails_admin'
  root to: 'pages#home'

  resources :admins, except: [:index, :new, :create, :edit, :update, :destroy,] do
  collection do
    get 'index_article'
    get 'show_article'
    get 'new_article'
    get 'create_article'
    get 'delete_article'
    get 'index_user'
    get 'new_user'
    get 'create_user'
    get 'delete_user'
    get 'index_review'
    get 'delete_review'
  end
end


  get 'admins/dashboard'
  get '/profile', to: 'profiles#profile'
  get '/upvote', to: "articles#upvote"


  resources :articles do
    resources :reviews, only: [ :index, :new, :create ]
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
