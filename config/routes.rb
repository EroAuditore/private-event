Rails.application.routes.draw do
  devise_for :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "events#index"
  
  #get 'user_event', action: :user_events, controller: 'events'
  
  resources :events do
    member do
      get 'join'
      get 'cancel_join'
      get 'user', action: :user_events, controller: 'events'
      #get 'user', to: 'events#user_events'
    end
  end
end
