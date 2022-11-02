Rails.application.routes.draw do
  root "traffis_projects#index"
  resources :traffis_projects

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
