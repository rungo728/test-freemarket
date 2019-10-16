Rails.application.routes.draw do
  devise_for :users
  root 'tests#index'
  resources :tests, only: [:index, :show, :new]
  resources :users, only: [:index, :show, :new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
