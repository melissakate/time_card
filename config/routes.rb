TimeCard::Application.routes.draw do

  resources :users do
    resources :time_entries, except: [:new] 
  end

  root to: "users#index"

end
