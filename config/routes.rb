Rails.application.routes.draw do
  resources :workers
  resources :clients do 
    resources :projects
  end
  resources :companies
  devise_for :users
  root 'static_pages#home'
end
