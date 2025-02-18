Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards, only: [:new, :create, :edit, :update, :destroy]
  root to: 'home#index'
  get "boards", to: "home#index"
  resources :boards do
    resources :tasks, only: [:index, :new, :create]
  end
end
