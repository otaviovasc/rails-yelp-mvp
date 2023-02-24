Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"

  resources :restaurants, only: %i[index new create show reviews] do
    get 'review', on: :collection


    resources :reviews, only: %i[index create]
  end
end
