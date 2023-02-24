Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: %i[index new create show] do
    # resources :bookmarks, only: %i[new create show]
    get "lists/:id", to: "bookmarks#new"
    post "lists/:id/bookmarks", to: "bookmarks#create"
  end
  resources :bookmarks, only: %i[destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
