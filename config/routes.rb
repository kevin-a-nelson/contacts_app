Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/contacts/:id' => 'contacts#show'
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'

    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'

    post '/sessions' => 'sessions#create'
  end
end
