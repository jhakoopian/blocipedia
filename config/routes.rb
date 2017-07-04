Rails.application.routes.draw do
  resources :charges, only: [:new, :create]

  devise_for :users

  resources :wikis

  get 'welcome/index'

  root 'welcome#index'
end
