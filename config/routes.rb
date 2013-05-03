TimeCard::Application.routes.draw do
  get"/time_entries" => "time_entries#index"
  get"/time_entries/new" => "time_entries#new"
  get "/users" => "users#index"
  get "/users/new" => "users#new"


  post"/time_entries" => "time_entries#create"


get "/time_entries/:id/edit" => "time_entries#edit"
put "/time_entries/:id" => "time_entries#update"
get "/time_entries/:id" => "time_entries#show"


  delete "/time_entries/:id" => "time_entries#destroy"

  post "/c1" => "time_entries#c1"
end
