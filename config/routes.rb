Rails.application.routes.draw do
  root to: 'groups#index'
  resources :groups, only: :new

  namespace :api, format: 'json' do
    resources :groups, only: [:index, :create, :update]
  end
end
