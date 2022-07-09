Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'home/index'
  get "/parametros/genero", to:"genero#index" #/parametros/genero
  get "/parametros/tipo", to:"tipo#index" #/parametros/tipo
  get "/parametros/regionch", to:"regionch#index" #/parametros/regionch

  
  # root "articles#index"
  root to: "home#index"

end
