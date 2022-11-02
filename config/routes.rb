Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get 'account', :to => 'accounts#update'
      get 'accounts', :to => 'accounts#show'
      get 'accounts/all', :to => 'accounts#show_all'
      # resources :accounts
    end
  end
end
