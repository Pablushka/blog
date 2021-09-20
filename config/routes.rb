Rails.application.routes.draw do
 
  resources :scores
  resources :users
  resources :events
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Obtiene el listado de articulos
  get "/articles", to: "articles#index"

  get "/authors", to: "articles#authors"


end
