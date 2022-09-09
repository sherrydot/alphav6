Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end