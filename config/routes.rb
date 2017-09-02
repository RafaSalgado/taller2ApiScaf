Rails.application.routes.draw do
  resources :residencia
  resources :cars
  resources :pets
  resources :products
  resources :countries
  resources :nota
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
