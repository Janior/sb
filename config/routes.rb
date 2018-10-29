Rails.application.routes.draw do
#  get '/posts', to: 'posts#index'
#  get '/posts/new', to: 'posts#new', as: 'new_post'
#  post '/posts', to: 'posts#create'
#  get '/posts/:id', to: 'posts#show', as: 'post'
#  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
#  patch '/posts/:id', to: 'posts#update'
#  delete '/posts/:id', to: 'posts#destroy'

  resources :posts
  root 'posts#index'

  resources :users, only: [:new, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
