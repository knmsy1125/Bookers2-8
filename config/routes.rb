Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
   resource :relationships, only: [:create, :destroy]
  end
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  root 'homes#top'
  get 'home/about' => 'homes#about'
  get 'users/:id/follow' => 'users#follow',as:'users_follow'
  get 'users/:id/follower' => 'users#follower',as:'users_follower'
  get "search" => "searches#search"

end
