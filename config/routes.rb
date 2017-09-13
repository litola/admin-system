Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :workers
  resources :clients do 
    resources :projects
  end
  resources :companies
  devise_for :users
  root 'static_pages#home'
end
