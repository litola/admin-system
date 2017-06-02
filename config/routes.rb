Rails.application.routes.draw do
  resources :companies
  devise_for :users
  root 'static_pages#home'
end
