Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root "static_pages#show"
  get "users/omniauth_callbacks"
  devise_for :users, controllers:{registrations: "registrations"}
  devise_scope :user do  
    get "/users/auth/facebook/callback" => "users/omniauth_callbacks#facebook"
  end

  resources :movies, only: [:index, :show] do
    resources :rates, only: [:create]
    resources :bookmarks, only: [:create, :destroy]
  end
  resources :reviews do
    resources :comments
  end
  resources :users, only: [:index, :show] do
    resources :reviews, except: :index
  end
  resources :actors, only: [:index, :show]
  resources :types, only: [:index, :show]  
  resources :feedbacks, only: [:new, :create]

  get "users/:id/reviews" => "users#reviews", as: :user_all_reviews
  get "users/:id/bookmarks" => "users#bookmarks", as: :user_favorites
  get "static_pages/about", as: :about
  get "feedbacks" => "feedbacks#contact", as: :contact
  get "search(/:search)", to: "searches#index", as: :search

  namespace :admin do
    root "static_pages#show", page: "dashboard"
    resources :movies
    resources :users
  end
end
