Rails.application.routes.draw do
  resources :reviews
  resources :spots, only: [:index, :show, :create, :update, :destroy]

  get "/revies_by_spot", to: "spots#reviews"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
