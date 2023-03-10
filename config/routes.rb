Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  root "chatroom#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  post "message", to: "messages#create"

end
