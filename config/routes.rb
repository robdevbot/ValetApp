Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  get 'vehicles' => "vehicles#index"
  get 'vehicles/get_info_from_vin' => 'vehicles#get_info_from_vin'

  get 'check_in/:id' => 'check_in#show'
  get 'check_ins' => 'check_ins#index'
  post 'check_in' => 'check_ins#create'
end
