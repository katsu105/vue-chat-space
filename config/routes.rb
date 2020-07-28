Rails.application.routes.draw do
  root to: 'groups#index'
  resources :groups, only: [:new, :show]

  namespace :api, format: 'json' do
    resources :groups, only: [:index, :show, :create, :update] do
      collection do
        get :search_group_name
      end
      resources :messages, only: [:index, :create]
    end
  end
end
