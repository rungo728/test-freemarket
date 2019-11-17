Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :tests, only: [:index, :show, :new]
  resources :users, only: [:index, :show, :new, :edit]
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
  resources :items, only: [:index, :show, :new]  
end
