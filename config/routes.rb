Rails.application.routes.draw do
  namespace :marketplace do
    resources :orders
    resources :items
    resources :order_items
  end

  namespace :workout do
    # resources :users do
      resources :user_workouts do
        collection do
          get 'search_workout' => 'user_workouts#search_workout'
        end
      end
    # end
    resources :workout_categories
  end

  namespace :nutrition do
    resources :meals
  end

  namespace :social do
    resources :posts
    resources :categories
  end


  resources :workouts
  # get 'dashboards/index'
  get "/dashboards", to: "dashboards#index"

  devise_for :users
  resources :todos

  # root to: "dashboards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
