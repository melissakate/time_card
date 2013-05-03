TimeCard::Application.routes.draw do
  resources :time_entries


 # post "/users" => "users#create" 
  # sa view: create display submitted using form 
  #get"/time_entries" => "time_entries#index"
  #get"/time_entries/new" => "time_entries#new"
  #get "/users" => "users#index"
  #get "/users/new" => "users#new"
  
  #get "/users/:id//edit" => "users#edit"
  #put "/users/:id" => "users#update"
  #get "/users/:id" => "users#show"

  #post"/time_entries" => "time_entries#create"
  #delete "users/:id" => "users#delete"
  #post "/a"  => "users#a"


#get "/time_entries/:id/edit" => "time_entries#edit"
#put "/time_entries/:id" => "time_entries#update"
#get "/time_entries/:id" => "time_entries#show"


 # delete "/time_entries/:id" => "time_entries#destroy"

  #post "/c1" => "time_entries#c1"
end
