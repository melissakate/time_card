TimeCard::Application.routes.draw do
  

  post "/users" => "users#create" 
# sa view: create display submitted using form 
  get"/time_entries" => "time_entries#index"
  get"/time_entries/new" => "time_entries#new"
  get "/users" => "users#index"
  get "/users/new" => "users#new"


  post"/time_entries" => "time_entries#create"

end
