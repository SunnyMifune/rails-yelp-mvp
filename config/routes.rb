Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:create, :new]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
