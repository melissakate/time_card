TimeCard::Application.routes.draw do
  get"/time_entries" => "time_entries#index"
  get"/time_entries/new" => "time_entries#new"
  get "/users" => "users#index"
  get "/users/new" => "users#new"
end
