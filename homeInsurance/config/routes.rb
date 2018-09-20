Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :items
  resources :insurers

  root to: "insurers#index"
  # root "insurers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
