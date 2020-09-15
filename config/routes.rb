Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recettes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :ingredients, only: [:index, :show, :new, :create, :destroy]
    # resources :whishlists, only: [:show, :new, :create]
    resources :reviews, only: [:index, :show, :new, :create]
  end
end
