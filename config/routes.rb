Rails.application.routes.draw do

  resources :addresses

  get     '/items',      to: 'items#index'
  get     '/items/new',  to: 'items#new'
  get     '/items/:id',  to: 'items#show'
  post    '/items',      to: 'items#create'
  put     '/items/:id',  to: 'items#update'
  delete  '/items/:id',  to: 'items#destroy'

  get     '/items/:id/users', to: 'items#users'  #join tables

  get     '/orders',      to: 'orders#index'
  get     '/orders/new',  to: 'orders#new'
  get     '/orders/:id',  to: 'orders#show'
  post    '/orders',      to: 'orders#create'
  put     '/orders/:id',  to: 'orders#update'
  delete  '/orders/:id',  to: 'orders#destroy'

  get     '/users',       to: 'users#index'
  get     '/users/new',   to: 'users#new'
  get     '/users/:id',   to: 'users#show'
  post    '/users',       to: 'users#create'
  put     '/users/:id',   to: 'users#update'
  delete  '/users/:id',   to: 'users#destroy'

  get     '/users/:id/items', to: 'users#items'  #join tables

  root    'users#index'
end

