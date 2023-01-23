Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :levels
  resources :students do
    get '/page/:page', action: :index, on: :collection
  end
  get "download_csv", to: "students#download_csv"
end
