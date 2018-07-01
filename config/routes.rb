Rails.application.routes.draw do

  devise_for :admins
  resources :courses
  resources :events
  resources :departaments
  resources :children
  resources :adresses
  root 'welcome#home'
  resources :users
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
