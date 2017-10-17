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

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
