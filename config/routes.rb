Rails.application.routes.draw do

 root 'pictures#index'
 resources :users do
    resources :pictures
 end

 resources :sessions, only: [:new, :create]
 get '/logout' => 'sessions#destroy', as: :logout
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
