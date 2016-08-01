Rails.application.routes.draw do
  
  post '/rate' => 'rater#create', :as => 'rate'
  get '/' => 'static#index'
  get '/user_profile' => 'profiles#user_profile'
  get '/scroll_test' => 'static#scroll_test'
  
  devise_for :users
  devise_for :views
  
  resources :profiles
  resources :home_listings
  
end
