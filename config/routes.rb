Rails.application.routes.draw do
  resources :charges, only: [:new, :create]

  devise_for :users

  resources :downgrade do
    collection do
      get :downgrade
    end
  end

  resources :users, only: [:show, :update]

  resources :wikis do
    resources :collaborators, only: [:index, :create, :destroy]
  end

  get 'welcome/index'

  root 'welcome#index'
end
