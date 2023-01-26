# config/routes.rb
Rails.application.routes.draw do

  resources :applications, only: [:index,:destroy,:update]

  resources :colleges do 
    resources :applications, only: [:create,:index]
  end

  resources :users do 
    resources :applications, only: [:index,:show] 
  end


  get"/get-current-user", to: "sessions#get_current_user" 
  post"/login", to: "sessions#create"
  



end