Rails.application.routes.draw do
  resources :clients
  resources :companies
  devise_for :users
  root 'static_pages#home'
end
