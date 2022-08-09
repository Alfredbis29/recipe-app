Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users

  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes do
  resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  resources :public_recipes, only: [:index]

end
