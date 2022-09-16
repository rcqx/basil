Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "groups#index"

  resources :groups, only: [:index, :show, :new, :create, :destroy, :log_out] do
    resources :bills, only: [:index, :show, :new, :create, :destroy]
  end

  get 'groups/:id', to: 'groups#log_out', as: 'log_out'
end
