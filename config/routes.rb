Rails.application.routes.draw do	
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: "pages#dashboard"
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  require 'sidekiq/web'
  #authenticate :user -> (user) {user.admin?} do
  mount Sidekiq::Web => '/sidekiq'
  #end
  	
end
