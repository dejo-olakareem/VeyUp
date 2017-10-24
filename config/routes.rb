Rails.application.routes.draw do
  get 'welcome/index'
  resources :sessions
  resources :users do
    resources :surveys, shallow: true
  end

  resources :surveys, only: [] do
    resources :questions, shallow: true
  end

  resources :questions, only: [] do
    resources :answers, shallow: true
  end
  get 'auth/:provider/callback', to: 'sessions#create_from_facebook'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
