Rails.application.routes.draw do	
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: "pages#dashboard"
  get 'proposition', to: "pages#proposition"
  get 'member', to: "pages#member"
  resources :events
  resources :events_users, only: [:destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  require 'sidekiq/web'
  #authenticate :user -> (user) {user.admin?} do
  mount Sidekiq::Web => '/sidekiq'
  #end
  	
end
