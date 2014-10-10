require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, contraints: ApiConstraints.new(version: 1, default: true) do
      resources :tasks
    end
  end
end
