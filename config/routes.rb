Rails.application.routes.draw do
  resources :maps
  resources :ceus
  resources :clients
  resources :usstates
  resources :users
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root 'welcome#index'
end
