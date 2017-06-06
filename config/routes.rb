Rails.application.routes.draw do
  resources :clients do 
    resources :projects
  end
  resources :companies
  devise_for :users
  root 'static_pages#home'
end
