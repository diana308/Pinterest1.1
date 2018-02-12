 Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
 # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    end
  resources :pins
  #get 'users'

  root 'welcome#index'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
