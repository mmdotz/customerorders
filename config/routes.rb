Rails.application.routes.draw do

  get     '/orders',      to: 'orders#index'

  get     '/orders/new',  to: 'orders#new'

  get     '/orders/:id',  to: 'orders#show'

  post     '/orders',     to: 'orders#create'

  put     '/orders/:id',  to: 'orders#update'

  delete  '/orders/:id',  to: 'orders#destroy'

  get     '/users',       to: 'users#index'

  get     '/users/new',   to: 'users#new'

  get     '/users/:id',   to: 'users#show'

  post    '/users',       to: 'users#create'

  put     '/users/:id',   to: 'users#update'

  delete  '/users/:id',   to: 'users#destroy'

  root    'users#index'
end

