Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    collection do
      get :index
      get :new
      get :show
    end
    resources :reviews, only: [:create]
  end
end
