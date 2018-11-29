Rails.application.routes.draw do
  get 'projects_users/create'
  get 'dashboard/index'
  resources :projects do
    resources :projects_users, only: :create
  end
  resources :users
  post 'users/:user_id/projects_users', to:'projects_users#addwork'
  resources :users
  root to: "dashboard#index"
    resources :dashboard do
        member do
          get 'create'
        end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
