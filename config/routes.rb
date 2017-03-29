Application.routes.draw do
  use_doorkeeper
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount API::Base => '/api'
  root to: 'index#index'
end

