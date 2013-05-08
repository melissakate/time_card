TimeCard::Application.routes.draw do

  resources :users do
    resources :time_entries 
  end

  root to: "users#index"

end
