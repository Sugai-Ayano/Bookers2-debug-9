Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  root 'homes#top'
  get 'home/about', to: 'homes#about', as: 'home_about'
  root to: 'homes#top'
end