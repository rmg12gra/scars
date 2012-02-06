Scars::Application.routes.draw do
 get "login" => "sessions#new", :as => "login"
 get "logout" => "sessions#destroy", :as => "logout"
 get "signup" => "users#new", :as => "signup"
 match "profile" => "users#show"
 root :to => 'home#index'
 resources :users
 resources :sessions
end
