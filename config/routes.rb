Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  get 'memos/new'
  get 'memos/create'
  get 'memos/index'
  get 'memos/show'
  get 'memos/destroy'
  get 'memos/edit'
  get 'memos/update'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
end
