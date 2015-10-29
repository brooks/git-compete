Rails.application.routes.draw do

  root 'users#index'
  
  get 'users', to: 'users#index', as: 'users'
  post 'users/fetch', to: 'users#fetch', as: 'fetch_users'

end
