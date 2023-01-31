Rails.application.routes.draw do

root "books#index"

  resources :books do
    member do
      get :delete
    end
  end

  # root "books#index"
  # post 'books/create'
  # get 'books/read'
  # get 'books/update'
  # get 'books/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
