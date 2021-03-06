Rails.application.routes.draw do

  get 'memotags/create'
  get 'memotags/destroy'
  get 'tags/create'
  get 'tags/destroy'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  get 'calender', to: 'memos#calender'


  resources :users, only: [:new, :create]
  resources :memos, only: [:create, :show, :edit, :update, :destroy]
  #resources :calenders, only: [:index]

end
