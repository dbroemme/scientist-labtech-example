Rails.application.routes.draw do
  root 'prime_factor#index'
  get 'prime_factor/index'
  post 'prime_factor/search' 
end
