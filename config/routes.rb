Rails.application.routes.draw do

  resources :workout_categories
  resources :user_workouts do
    collection do
      get 'search_workout' => 'user_workouts#search_workout'
    end
  end 
  
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
