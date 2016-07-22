Rails.application.routes.draw do
  
  
  get '/' => 'static#index'
  
  devise_for :users
  devise_for :views
  
end
