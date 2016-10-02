Rails.application.routes.draw do

  #Statis pages
  root to: 'static_pages#home'
  get 'home', to: 'static_pages#home', as: 'home'
  get 'about', to: 'static_pages#about', as: 'about'

  #Devise
  devise_for :users
  get 'user_root', to: 'spots#index', as: :user_root

  #Spots
   resources :spots

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
