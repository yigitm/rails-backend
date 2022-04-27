Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'messages#index'
  namespace :api, default: { format: 'json'} do
    get 'messages' => 'messages#index'
  end
end
