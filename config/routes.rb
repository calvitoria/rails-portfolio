Rails.application.routes.draw do
  root "home#index"
  get "/posts", to: "posts#index"

  get "/home", to: "home#index"
end
