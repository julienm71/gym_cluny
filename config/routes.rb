Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#acceuil'
  get 'horaires', to: 'pages#horaires'
  get 'tarifs', to: 'pages#tarifs'
  get 'sports', to: 'pages#sports'
  get 'admin', to: 'admin#index'

  resources :posts
  # get "blog", to: 'posts#index'
  # get "blog/post/:id", to: "posts#show"
  # get "blog/post/new", to: "posts#new"
  # post "blog/post/create", to: "posts#create"
  # get "blog/post/:id/edit", to: "posts#edit"
  # patch "blog/post/:id", to: "posts#update"
  # delete "blog/post/:id", to: "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
