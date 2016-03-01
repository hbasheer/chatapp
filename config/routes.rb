Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  root to: 'home#index'

  resources :coversations
  resources :messages
  
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    get "logout" => "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
