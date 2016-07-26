Rails.application.routes.draw do
  
  
  get '/' => 'static#index'
  get '/sitter_settings' => 'profiles#sitter_settings'
  get '/home_settings' => 'profiles#home_settings'
  devise_for :users
  devise_for :views
  
end
