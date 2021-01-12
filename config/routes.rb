Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:create]
  # resource :books

  # USER
    post "/login", to: "users#login"

    get "/auto_login", to: "users#auto_login"

    get "/index", to: "users#index"

  # NOTES
    get "/books", to: "books#index"

    post "/create_note", to: "books#create"

    get "/divisions", to: "divisions#divisions"

    post "/create_division", to: "divisions#create_division"

    get "/get_division/:id", to: "divisions#get_division"

    put "/update_division/:id", to: "divisions#update_division"

    delete "/destroy_division/:id", to: "divisions#destroy_division"
end
