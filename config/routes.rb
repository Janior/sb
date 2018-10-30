Rails.application.routes.draw do
#  get '/posts', to: 'posts#index'
#  get '/posts/new', to: 'posts#new', as: 'new_post'
#  post '/posts', to: 'posts#create'
#  get '/posts/:id', to: 'posts#show', as: 'post'
#  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
#  patch '/posts/:id', to: 'posts#update'
#  delete '/posts/:id', to: 'posts#destroy'

  root 'posts#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  resources :users, only: [:new, :create]
  resources :posts
  devise_for :users

  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
