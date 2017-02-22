Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'

  resources :users do
   resources :foods
   resources :activities
   resources :lazies
 end
end
