Rails.application.routes.draw do
  devise_for :users
  # 仮のルーティング
  root 'items#index'
  resources :tests, only: [:index, :show, :new]
  resources :items, only: [:index, :show, :new]
  resources :signup do
    collection do
      get 'step1'
      get 'step2_1'
      get 'step2_2'
      get 'step3'
      get 'step4'
      get 'step5'
      get 'done'
    end
  end  
  get 'users/show', to: 'users#show'
  get 'user/edit', to: 'users#edit'
  get 'identification', to: 'users#identification'
  get 'logout', to: 'users#logout'
  get 'card', to: 'users#card'
end
