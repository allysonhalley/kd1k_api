Rails.application.routes.draw do
  resources :bloods
  resources :parents
  resources :voter_data
  resources :addresses
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/addresses/addresses_to_person/:id', to: 'addresses#addresses_to_person'
end
