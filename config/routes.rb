Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "homes#top"
  get "home/about" => "homes#about"

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    member do
    resource :favorites, only: [:create, :destroy]
    end
  end
  resources :users, only: [:index, :show, :edit, :update] do
    get '/search', to: 'search#search'
  end
end
