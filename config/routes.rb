TimeCard::Application.routes.draw do

  resources :users do
    resources :time_entries, except: [:new,] 
  end

  root to: "users#index"
put "/users/:user_id/time_entries/:id/upd_acc" => "time_entries#upd_acc"
end
