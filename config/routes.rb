Rails.application.routes.draw do
  root 'scores#new'
  resources :scores, only: [:create, :index]
  
  
  
  get '/cats_facts', to: 'cats#index'
end