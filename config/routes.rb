Rails.application.routes.draw do
  root to: 'groups#index'

  namespace :api, format: 'json' do
    resources :groups, only: [:index, :create, :update]
  end
end
