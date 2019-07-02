Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/contact' => 'contacts#the_contact'
    get 'all_contacts' => 'contacts#all'
  end
end
