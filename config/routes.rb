require 'api_constraints'

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: '/auth'
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, contraints: ApiConstraints.new(version: 1, default: true) do
      resources :tasks
      devise_for :users
      # , :controllers => {:registrations => "registrations", :sessions => "sessions"}
      # resources :users
    end
  end
end
