Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"

  get 'home/about' => 'homes#about'
  
  post 'books' => 'books#create'

  resources :users, only: [:index, :show, :edit, :update]

  resources :books, only: [:new, :create, :index, :show]

end
