TimeCard::Application.routes.draw do
  resources :time_entries

  resources :users do
    resources :time_entries
  end

end
