Rails.application.routes.draw do

  resources :user_workouts
  resources :workouts
  # get 'dashboards/index'
  get "/dashboards", to: "dashboards#index"

  resources :meals
  resources :posts
  resources :categories
  devise_for :users	
  resources :todos

  root to: "dashboards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
