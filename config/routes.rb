Rails.application.routes.draw do

 root 'pictures#index'
 resources :users do
    resources :pictures
 end

 resources :sessions, only: [:new, :create]

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :pictures, only: [:destroy]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
