Rails.application.routes.draw do
  root 'scores#new'
  resources :scores, only: [:create, :index]
end