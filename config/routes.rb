Rails.application.routes.draw do
  root 'feed#index'
  get '/feed', to: 'feed#index'
  get '/posts', to: 'posts#index'
  get '/about', to: 'about#index'
  get '/projects', to: 'projects#index'
  get '/guestbook', to: 'guest_posts#index'

  resources :guest_posts, only: [:create, :index]
end
