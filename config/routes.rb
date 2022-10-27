Rails.application.routes.draw do
  root "stack#index"
  get "/stack", to: "stack#index"
  get "/stack/push", to: "stack#push"
  get "/stack/pop", to: "stack#pop"
  get "/stack/max", to: "stack#max"
  get "/stack/mean", to: "stack#mean"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
