Rails.application.routes.draw do
  devise_for :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "events#index"
  
  #get 'event/join', action: :join, controller: 'events'
  resources :events do
    member do
      get 'join'
      get 'cancel_join'
    end
  end
end
