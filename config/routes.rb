Rails.application.routes.draw do
  resources :trabajos
  devise_for :users
  devise_for :empresas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'home/index'
  get "/parametros/genero", to:"genero#index" 
  get "/parametros/tipo", to:"tipo#index" 
  get "/parametros/regionch", to:"regionch#index" 

  # root "articles#index"
  root to: "home#index"

end
