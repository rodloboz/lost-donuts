Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "donuts", to: "donuts#index"
  post "donuts", to: "donuts#create"

  # "donuts/new" => id: new
  get "donuts/new", to: "donuts#new", as: :new_donut
  get "donuts/:id", to: "donuts#show", as: :donut

  # resources :donuts, only: [:index, :show, :new, :create]
end
