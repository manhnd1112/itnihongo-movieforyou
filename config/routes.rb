Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root "static_pages#show"
  get "users/omniauth_callbacks"
  devise_for :users, controllers:{registrations: "registrations"}
  devise_scope :user do  
    get "/users/auth/facebook/callback" => "users/omniauth_callbacks#facebook"
  end

  resources :movies, only: [:index, :show] do
    resources :rates
  end
  resources :reviews do
    resources :comments
  end
  resources :users, only: [:index, :show] do
    resources :reviews, except: :index
  end
  resources :actors, only: [:index, :show]

  get "users/:id/reviews" => "users#reviews", as: :user_all_reviews
end
