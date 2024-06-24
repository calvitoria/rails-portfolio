Rails.application.routes.draw do
  root "home#index"
  get "/posts", to: "posts#index"
  get 'home/feed', to: 'home#feed'
  get 'home/about', to: 'home#about'
  get 'home/projects', to: 'home#projects'
  get 'home/guestbook', to: 'home#guestbook'

  get "/home", to: "home#index"
end
