Rails.application.routes.draw do

  get     'users/index'   to: 'users#index'

  get     'users/new'     to: 'users#new'

  get     'users/show'    to: 'users#show'

  post    'users/create'  to: 'users#create'

  put     'users/update'  to: 'users#update'

  delete  'users/destroy' to: 'users#destroy'

  root    'users#index'
end
