Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users
  root "static_pages#home", page: "home"
  get "/movies" => "static_pages#show", as: :movie_list
  resources :reviews
end
